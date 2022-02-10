import './app_state.dart';
import './reducers/normal_game_reducer.dart';
import './reducers/theme_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    gameState: normalGameReducer(state.gameState, action),
    themeState: themeReducer(state.themeState, action),
  );
}
