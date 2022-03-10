import '../actions/single_player_actions.dart';
import '../states/single_player_state.dart';

SinglePlayerState singlePlayerReducer(
  SinglePlayerState state,
  dynamic action,
) {
  if (action is NewGame) {
    return SinglePlayerState.initialState(
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
    return state.changeLoading(true);
  } else if (action is SinglePlayerStopLoading) {
    return state.changeLoading(false);
  } else if (action is AddPainters) {
    return state.addPainters(action.paint, action.painters);
  } else if (action is ShowPaint) {
    return state.changePaint(true);
  } else if (action is HidePaint) {
    return state.changePaint(false);
  }

  return state;
}
