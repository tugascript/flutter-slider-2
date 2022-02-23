import '../actions/normal_game_actions.dart';
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
  } else if (action is ToogleLoading) {
    return state.toogleLoading();
  } else if (action is AddPainters) {
    return state.addPainters(action.paint, action.painters);
  }

  return state;
}
