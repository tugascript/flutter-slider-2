import 'dart:typed_data' show Uint8List;

import 'package:http/http.dart' show MultipartFile;
import 'package:http_parser/http_parser.dart' show MediaType;
import 'package:mime/mime.dart' show lookupMimeType;
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import '../../components/graphql/gql_client.dart';
import '../../components/graphql/mutations/delete_image.req.gql.dart';
import '../../components/graphql/mutations/upload_image.req.gql.dart';
import '../../components/graphql/queries/get_images.req.gql.dart';
import '../../components/models/app_notification.dart';
import '../../components/models/enums/notification_type_enum.dart';
import '../../components/models/server_image.dart';
import '../app_state.dart';
import 'notifications_actions.dart';

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

ThunkAction<AppState> loadImagesAction(String? after) {
  return (Store<AppState> store) async {
    store.dispatch(ImagesLoading());
    final client = GqlClient.client;
    final getImageRequest = GGetImagesReq((b) {
      b.vars.first = 20;

      if (after != null) {
        b.vars.after = after;
      }

      return b;
    });
    client.request(getImageRequest).listen((event) {
      if (!event.loading) {
        if (event.hasErrors) {
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

        final getImages = event.data!.getImages;
        final edges = getImages.edges;
        final images = <ServerImage>[];

        if (edges.isNotEmpty) {
          for (int i = 0; i < edges.length; i++) {
            final node = edges[i].node;
            images.add(
              ServerImage(id: node.id, url: node.url),
            );
          }
        }

        final pageInfo = getImages.pageInfo;
        store.dispatch(
          LoadImages(
            images: images,
            hasNextPage: pageInfo.hasNextPage,
            endCursor: pageInfo.endCursor,
          ),
        );
      }
    });
  };
}

ThunkAction<AppState> uploadImageAction(Uint8List image) {
  return (Store<AppState> store) async {
    store.dispatch(ImagesLoading());
    final client = GqlClient.client;
    final mime = lookupMimeType('', headerBytes: image)?.split('/');
    final uploadRequest = GUploadImageReq(
      (b) => b
        ..vars.image = MultipartFile.fromBytes(
          'image',
          image,
          filename: 'edited_image',
          contentType: mime != null ? MediaType(mime[0], mime[1]) : null,
        ),
    );
    client.request(uploadRequest).listen(
      (event) {
        if (!event.loading) {
          if (event.hasErrors) {
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

          final addImage = event.data!.addImage;
          store.dispatch(
            AddSingleImage(
              ServerImage(
                id: addImage.id,
                url: addImage.url,
              ),
            ),
          );
        }
      },
    );
  };
}

ThunkAction<AppState> removeImageAction(int imageId) {
  return (Store<AppState> store) async {
    store.dispatch(ImagesLoading());
    final client = GqlClient.client;
    final removeImageRequest = GDeleteImageReq(
      (b) => b..vars.imageId = imageId,
    );
    client.request(removeImageRequest).listen(
      (event) {
        if (!event.loading) {
          if (event.hasErrors) {
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
                message: event.data!.deleteImage.message,
              ),
            ),
          );
        }
      },
    );
  };
}
