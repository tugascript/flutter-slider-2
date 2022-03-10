import 'dart:typed_data' show Uint8List;

import 'package:graphql/client.dart' show QueryOptions, MutationOptions, gql;
import 'package:http/http.dart' show MultipartFile;
import 'package:http_parser/http_parser.dart' show MediaType;
import 'package:mime/mime.dart' show lookupMimeType;
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import '../../models/app_notification.dart';
import '../../models/enums/notification_type_enum.dart';
import '../../models/server_image.dart';
import '../../redux/actions/notifications_actions.dart';
import '../../utilities/gql/gql_client.dart';
import '../../utilities/gql/mutations.dart';
import '../../utilities/gql/queries.dart';
import '../app_state.dart';

class ImagesLoading {}

class ImagesStopLoading {}

class LoadImages {
  final List<ServerImage> images;
  final bool hasNextPage;
  final String endCursor;

  LoadImages({
    required this.images,
    required this.hasNextPage,
    required this.endCursor,
  });
}

class AddSingleImage {
  final ServerImage image;

  AddSingleImage(this.image);
}

class RemoveImage {
  final int id;

  RemoveImage(this.id);
}

ThunkAction<AppState> loadImagesAction() {
  return (Store<AppState> store) async {
    store.dispatch(ImagesLoading());

    try {
      final client = GqlClient().client;
      final result = await client.query(
        QueryOptions(
          document: gql(kGqlGetImages),
          variables: {
            'first': 20,
          },
        ),
      );

      if (result.hasException) {
        store.dispatch(
          AddNotification(
            const AppNotification(
              type: NotificationTypeEnum.error,
              message: 'Something went wrong.',
            ),
          ),
        );
        store.dispatch(ImagesStopLoading());
        return;
      }

      final List<dynamic> edges = result.data!['getImages']!['edges']!;
      final images = <ServerImage>[];
      if (edges.isNotEmpty) {
        for (int i = 0; i < edges.length; i++) {
          final node = edges[i]['node']!;
          images.add(ServerImage.fromJson(node));
        }

        final pageInfo = result.data!['getImages']!['pageInfo']!;

        store.dispatch(
          LoadImages(
            images: images,
            hasNextPage: pageInfo['hasNextPage']! as bool,
            endCursor: pageInfo['endCursor']! as String,
          ),
        );
      }
    } catch (e) {
      store.dispatch(
        AddNotification(
          const AppNotification(
            type: NotificationTypeEnum.error,
            message: 'Something went wrong.',
          ),
        ),
      );
      store.dispatch(ImagesStopLoading());
      return;
    }
  };
}

ThunkAction<AppState> uploadImageAction(Uint8List image) {
  return (Store<AppState> store) async {
    store.dispatch(ImagesLoading());

    try {
      final client = GqlClient().client;

      final mime = lookupMimeType('', headerBytes: image)?.split('/');

      final result = await client.mutate(
        MutationOptions(
          document: gql(kGqlUploadImage),
          variables: {
            'image': MultipartFile.fromBytes(
              'image',
              image,
              filename: 'edited_image',
              contentType: mime != null ? MediaType(mime[0], mime[1]) : null,
            ),
          },
        ),
      );

      if (result.hasException) {
        store.dispatch(
          AddNotification(
            const AppNotification(
              type: NotificationTypeEnum.error,
              message: 'Something went wrong.',
            ),
          ),
        );
        store.dispatch(ImagesStopLoading());
        return;
      }

      store.dispatch(
        AddSingleImage(
          ServerImage.fromJson(result.data!['addImage']!),
        ),
      );
    } catch (e) {
      store.dispatch(
        AddNotification(
          const AppNotification(
            type: NotificationTypeEnum.error,
            message: 'Something went wrong.',
          ),
        ),
      );
      store.dispatch(ImagesStopLoading());
      return;
    }
  };
}

ThunkAction<AppState> removeImageAction(int imageId) {
  return (Store<AppState> store) async {
    store.dispatch(ImagesLoading());
    try {
      final client = GqlClient().client;
      final result = await client.mutate(
        MutationOptions(
          document: gql(kGqlGetImages),
          variables: {
            'imageId': imageId,
          },
        ),
      );

      if (result.hasException) {
        store.dispatch(
          AddNotification(
            const AppNotification(
              type: NotificationTypeEnum.error,
              message: 'Something went wrong.',
            ),
          ),
        );
        store.dispatch(ImagesStopLoading());
        return;
      }

      store.dispatch(RemoveImage(imageId));
      store.dispatch(
        AddNotification(
          AppNotification(
            type: NotificationTypeEnum.warning,
            message: result.data!['deleteImage']!['message']!,
          ),
        ),
      );
    } catch (e) {
      store.dispatch(
        AddNotification(
          const AppNotification(
            type: NotificationTypeEnum.error,
            message: 'Something went wrong.',
          ),
        ),
      );
      store.dispatch(ImagesStopLoading());
      return;
    }
  };
}
