import 'package:v1/redux/reducers/auth_reducer.dart';

import './app_state.dart';
import 'reducers/single_player_reducer.dart';
import 'reducers/theme_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    singlePlayerState: singlePlayerReducer(state.singlePlayerState, action),
    themeState: themeReducer(state.themeState, action),
    authState: authReducer(state.authState, action),
  );
}
