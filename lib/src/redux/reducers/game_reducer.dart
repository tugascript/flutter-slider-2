import '../actions/game_actions.dart';
import '../states/game_state.dart';

GameState gameReducer(
  GameState state,
  dynamic action,
) {
  if (action is NewGame) {
    return GameState.initialState(
      action.level,
      action.difficultyEnum,
    );
  } else if (action is NextLevel) {
    return state.nextLevel();
  } else if (action is MovePiece) {
    return state.movePiece(action.pos);
  } else if (action is ShufflePuzzle) {
    return state.shuffleNormalGame();
  } else if (action is ReduceTimer) {
    return state.updateTime();
  } else if (action is UpdateGameStatus) {
    return state.updateGameStatus(action.status);
  } else if (action is SinglePlayerLoading) {
    return state.copyWith(loading: true);
  } else if (action is SinglePlayerStopLoading) {
    return state.copyWith(loading: false);
  } else if (action is AddPainters) {
    return state.addPainters(action.paint, action.painters);
  } else if (action is ShowPaint) {
    return state.copyWith(showPaint: true);
  } else if (action is HidePaint) {
    return state.copyWith(showPaint: false);
  }

  return state;
}
