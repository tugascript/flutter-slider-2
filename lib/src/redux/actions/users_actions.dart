import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import '../../components/graphql/gql_client.dart';
import '../../components/graphql/queries/find_records.req.gql.dart';
import '../../components/graphql/queries/find_users.req.gql.dart';
import '../../components/graphql/queries/get_single_user.req.gql.dart';
import '../../components/models/app_notification.dart';
import '../../components/models/enums/notification_type_enum.dart';
import '../../components/models/game_record.dart';
import '../../components/models/records_list.dart';
import '../../components/models/user.dart';
import '../../components/models/user_profile.dart';
import '../app_state.dart';
import 'notifications_actions.dart';

class UsersLoading {}

class UsersStopLoading {}

class LoadUsers {
  final List<User> users;
  final bool hasNextPage;
  final String endCursor;
  final String? search;

  LoadUsers({
    required this.users,
    required this.hasNextPage,
    required this.endCursor,
    this.search,
  });
}

class LoadProfile {
  final UserProfile profile;

  LoadProfile(this.profile);
}

class LoadProfileRecords extends RecordsList {
  const LoadProfileRecords({
    required int level,
    required List<GameRecord> records,
    required bool hasNextPage,
    String? cursor,
  }) : super(
          level: level,
          records: records,
          hasNextPage: hasNextPage,
          cursor: cursor,
        );
}

ThunkAction<AppState> loadUsers({String? search, String? after}) {
  return (Store<AppState> store) {
    store.dispatch(UsersLoading());
    final client = GqlClient.client;
    final findUsersRequest = GFindUsersReq((b) {
      b.vars.first = 20;

      if (search != null) {
        b.vars.search = search;
      }

      if (after != null) {
        b.vars.search = after;
      }

      return b;
    });
    client.request(findUsersRequest).listen((event) {
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
          store.dispatch(UsersStopLoading());
          return;
        }

        final getUsers = event.data!.getUsers;
        final edges = getUsers.edges;
        final users = <User>[];

        if (edges.isNotEmpty) {
          for (int i = 0; i < edges.length; i++) {
            final node = edges[i].node;
            users.add(
              User(
                id: node.id,
                username: node.username,
                picture: node.picture,
                maxLevel: node.maxLevel,
              ),
            );
          }
        }

        final pageInfo = getUsers.pageInfo;
        store.dispatch(
          LoadUsers(
            users: users,
            hasNextPage: pageInfo.hasNextPage,
            endCursor: pageInfo.endCursor,
          ),
        );
      }
    });
  };
}

ThunkAction<AppState> loadProfile(String username, int level) {
  return (Store<AppState> store) {
    store.dispatch(UsersLoading());
    final client = GqlClient.client;
    final getSingleUserRequest = GGetSingleUserReq(
      (b) => b
        ..vars.username = username
        ..vars.level = level,
    );
    client.request(getSingleUserRequest).listen((event) {
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
          store.dispatch(UsersStopLoading());
          return;
        }

        final getUser = event.data!.getUser;
        final edges = getUser.records.edges;
        final records = <GameRecord>[];

        if (edges.isNotEmpty) {
          for (int i = 0; i < edges.length; i++) {
            final node = edges[i].node;
            records.add(
              GameRecord(
                id: node.id,
                level: level,
                moves: node.moves,
                time: node.time,
              ),
            );
          }
        }

        final pageInfo = getUser.records.pageInfo;
        store.dispatch(
          LoadProfile(
            UserProfile(
              user: User(
                id: getUser.id,
                username: getUser.username,
                picture: getUser.picture,
                maxLevel: getUser.maxLevel,
              ),
              recordsList: RecordsList(
                records: records,
                level: level,
                hasNextPage: pageInfo.hasNextPage,
                cursor: pageInfo.endCursor,
              ),
            ),
          ),
        );
      }
    });
  };
}

ThunkAction<AppState> loadProfileRecords(int level, String after) {
  return (Store<AppState> store) {
    store.dispatch(UsersLoading());
    final client = GqlClient.client;
    final findRecordsRequest = GFindRecordsReq(
      (b) => b
        ..vars.level = level
        ..vars.after = after,
    );
    client.request(findRecordsRequest).listen((event) {
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
          store.dispatch(UsersStopLoading());
          return;
        }

        final getRecords = event.data!.getRecords;
        final edges = getRecords.edges;
        final records = <GameRecord>[];

        if (edges.isNotEmpty) {
          for (int i = 0; i < edges.length; i++) {
            final node = edges[i].node;
            records.add(
              GameRecord(
                id: node.id,
                level: level,
                moves: node.moves,
                time: node.time,
              ),
            );
          }
        }

        final pageInfo = getRecords.pageInfo;
        store.dispatch(
          LoadProfileRecords(
            records: records,
            level: level,
            hasNextPage: pageInfo.hasNextPage,
            cursor: pageInfo.endCursor,
          ),
        );
      }
    });
  };
}
