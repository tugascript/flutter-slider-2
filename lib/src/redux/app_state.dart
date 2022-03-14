import 'package:v1/src/redux/states/users_state.dart';

import '../components/models/app_notification.dart';
import '../components/models/enums/difficulty_enum.dart';
import '../components/models/enums/theme_enum.dart';
import 'states/auth_state.dart';
import 'states/game_state.dart';
import 'states/high_scores_state.dart';
import 'states/image_editor_state.dart';
import 'states/server_images_state.dart';

class AppState {
  final GameState gameState;
  final ThemeEnum themeState;
  final AuthState authState;
  final ImageEditorState imageEditorState;
  final ServerImagesState serverImagesState;
  final HighScoresState highScoresState;
  final UsersState usersState;
  final List<AppNotification> notificationsState;

  AppState({
    required this.gameState,
    required this.themeState,
    required this.authState,
    required this.imageEditorState,
    required this.serverImagesState,
    required this.highScoresState,
    required this.usersState,
    required this.notificationsState,
  });

  factory AppState.getInitialState() {
    final game = GameState.initialState(
      1,
      DifficultyEnum.easy,
    );
    return AppState(
      gameState: game,
      themeState: ThemeEnum.light,
      authState: AuthState.initialState(),
      imageEditorState: ImageEditorState.initialState(),
      serverImagesState: ServerImagesState.initialState(),
      highScoresState: HighScoresState.initialState(),
      usersState: UsersState.initialState(),
      notificationsState: const [],
    );
  }

  AppState copyWith({
    GameState? gameState,
    ThemeEnum? themeState,
    AuthState? authState,
    ImageEditorState? imageEditorState,
    ServerImagesState? serverImagesState,
    HighScoresState? highScoresState,
    UsersState? usersState,
    List<AppNotification>? notificationsState,
  }) {
    return AppState(
      gameState: gameState ?? this.gameState,
      themeState: themeState ?? this.themeState,
      authState: authState ?? this.authState,
      imageEditorState: imageEditorState ?? this.imageEditorState,
      serverImagesState: serverImagesState ?? this.serverImagesState,
      highScoresState: highScoresState ?? this.highScoresState,
      usersState: usersState ?? this.usersState,
      notificationsState: notificationsState ?? this.notificationsState,
    );
  }
}
