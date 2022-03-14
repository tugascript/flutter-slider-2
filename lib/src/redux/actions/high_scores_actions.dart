import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import '../../components/graphql/gql_client.dart';
import '../../components/graphql/queries/high_scores.req.gql.dart';
import '../../components/models/app_notification.dart';
import '../../components/models/enums/notification_type_enum.dart';
import '../../components/models/game_record.dart';
import '../../components/models/user.dart';
import '../app_state.dart';
import 'notifications_actions.dart';

class HighScoreLoading {}

class HighScoreStopLoading {}

class LoadHighScores {
  final int level;
  final List<GameRecord> records;
  final bool hasNextPage;
  final String endCursor;
  final GameRecord? currentRecord;
  final int? currentRank;

  LoadHighScores({
    required this.level,
    required this.records,
    required this.hasNextPage,
    required this.endCursor,
    this.currentRecord,
    this.currentRank,
  });
}

ThunkAction<AppState> loadHighScores(int level, {String? after}) {
  return (Store<AppState> store) async {
    store.dispatch(HighScoreLoading());
    final client = GqlClient.client;
    final highScoreRequest = GHighScoresReq((b) {
      b.vars.level = level;
      b.vars.first = 20;

      if (after != null) b.vars.after = after;

      return b;
    });
    client.request(highScoreRequest).listen((event) {
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
          store.dispatch(HighScoreStopLoading());
          return;
        }

        final getHighScores = event.data!.getHighScores;
        final edges = getHighScores.records.edges;
        final records = <GameRecord>[];

        if (edges.isNotEmpty) {
          for (int i = 0; i < edges.length; i++) {
            final node = edges[i].node;
            final owner = node.owner;
            records.add(
              GameRecord(
                id: node.id,
                level: level,
                moves: node.moves,
                time: node.time,
                user: User(
                  id: owner.id,
                  username: owner.username,
                  picture: owner.picture,
                ),
              ),
            );
          }

          final rawRecord = getHighScores.currentRecord;
          GameRecord? currentRecord;

          if (rawRecord != null) {
            currentRecord = GameRecord(
              id: rawRecord.id,
              level: level,
              moves: rawRecord.moves,
              time: rawRecord.time,
            );
          }

          final currentRank = getHighScores.currentRank;
          final pageInfo = getHighScores.records.pageInfo;
          store.dispatch(
            LoadHighScores(
              level: level,
              records: records,
              hasNextPage: pageInfo.hasNextPage,
              endCursor: pageInfo.endCursor,
              currentRank: currentRank,
              currentRecord: currentRecord,
            ),
          );
        }
      }
    });
  };
}
