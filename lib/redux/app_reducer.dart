import './app_state.dart';
import 'reducers/game_reducer.dart';
import 'reducers/theme_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    gameState: gameReducer(state.gameState, action),
    themeState: themeReducer(state.themeState, action),
  );
}
