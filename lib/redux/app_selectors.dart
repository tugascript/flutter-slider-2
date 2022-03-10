import 'package:redux/redux.dart';

import '../models/app_notification.dart';
import '../models/enums/theme_enum.dart';
import '../models/game/game.dart';
import 'app_state.dart';
import 'states/auth_state.dart';
import 'states/image_editor_state.dart';
import 'states/server_images_state.dart';
import 'states/single_player_state.dart';

SinglePlayerState selectSinglePlayerState(Store<AppState> store) =>
    store.state.singlePlayerState;
Game selectSingleGameState(Store<AppState> store) =>
    store.state.singlePlayerState.game;
ThemeEnum selectThemeState(Store<AppState> store) => store.state.themeState;
AuthState selectAuthState(Store<AppState> store) => store.state.authState;
ImageEditorState selectImageEditorState(Store<AppState> store) =>
    store.state.imageEditorState;
ServerImagesState selectServerImagesState(Store<AppState> store) =>
    store.state.serverImages;
List<AppNotification> selectNotifications(Store<AppState> store) =>
    store.state.notifications;
