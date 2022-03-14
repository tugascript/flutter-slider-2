import '../actions/high_scores_actions.dart';
import '../states/high_scores_state.dart';

HighScoresState highScoresReducer(HighScoresState state, dynamic action) {
  if (action is HighScoreLoading) {
    return state.copyWith(loading: true);
  } else if (action is HighScoreStopLoading) {
    return state.copyWith(loading: false);
  } else if (action is LoadHighScores) {
    return state.copyWith(
      records: state.level == action.level
          ? [...state.records, ...action.records]
          : action.records,
      hasNextPage: action.hasNextPage,
      cursor: action.endCursor,
      level: action.level,
      currentRecord: action.currentRecord,
      currentRank: action.currentRank,
      loading: false,
    );
  }

  return state;
}
