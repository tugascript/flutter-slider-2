import 'package:redux/redux.dart';
import 'package:v1/src/components/models/records_list.dart';

import '../components/models/app_notification.dart';
import '../components/models/enums/theme_enum.dart';
import '../components/models/game/game.dart';
import '../components/models/user_profile.dart';
import 'app_state.dart';
import 'states/auth_state.dart';
import 'states/game_state.dart';
import 'states/high_scores_state.dart';
import 'states/image_editor_state.dart';
import 'states/server_images_state.dart';
import 'states/users_state.dart';

GameState selectGameState(Store<AppState> store) => store.state.gameState;
Puzzle selectPuzzleState(Store<AppState> store) => store.state.gameState.puzzle;
ThemeEnum selectThemeState(Store<AppState> store) => store.state.themeState;
AuthState selectAuthState(Store<AppState> store) => store.state.authState;
ImageEditorState selectImageEditorState(Store<AppState> store) =>
    store.state.imageEditorState;
ServerImagesState selectServerImagesState(Store<AppState> store) =>
    store.state.serverImagesState;
HighScoresState selectHighScoresState(Store<AppState> store) =>
    store.state.highScoresState;
UsersState selectUsersState(Store<AppState> store) => store.state.usersState;
UserProfile? selectUserProfile(Store<AppState> store) =>
    store.state.usersState.profile;
RecordsList? selectRecordsList(Store<AppState> store) =>
    store.state.usersState.profile?.recordsList;
List<AppNotification> selectNotificationsState(Store<AppState> store) =>
    store.state.notificationsState;
