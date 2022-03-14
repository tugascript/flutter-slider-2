import 'app_state.dart';
import 'reducers/auth_reducer.dart';
import 'reducers/game_reducer.dart';
import 'reducers/high_scores_reducer.dart';
import 'reducers/image_editor_reducer.dart';
import 'reducers/notifications_reducer.dart';
import 'reducers/server_images_reducer.dart';
import 'reducers/theme_reducer.dart';
import 'reducers/users_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    gameState: gameReducer(state.gameState, action),
    themeState: themeReducer(state.themeState, action),
    authState: authReducer(state.authState, action),
    imageEditorState: imageEditorReducer(state.imageEditorState, action),
    serverImagesState: serverImagesReducer(state.serverImagesState, action),
    highScoresState: highScoresReducer(state.highScoresState, action),
    usersState: usersReducer(state.usersState, action),
    notificationsState: notificationsReducer(state.notificationsState, action),
  );
}
