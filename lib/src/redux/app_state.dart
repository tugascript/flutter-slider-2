import '../components/models/app_notification.dart';
import '../components/models/enums/difficulty_enum.dart';
import '../components/models/enums/theme_enum.dart';
import 'states/auth_state.dart';
import 'states/image_editor_state.dart';
import 'states/server_images_state.dart';
import 'states/game_state.dart';

class AppState {
  final GameState gameState;
  final ThemeEnum themeState;
  final AuthState authState;
  final ImageEditorState imageEditorState;
  final ServerImagesState serverImages;
  final List<AppNotification> notifications;

  AppState({
    required this.gameState,
    required this.themeState,
    required this.authState,
    required this.imageEditorState,
    required this.serverImages,
    required this.notifications,
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
      serverImages: ServerImagesState.initialState(),
      notifications: const [],
    );
  }

  AppState copyWith({
    GameState? gameState,
    ThemeEnum? themeState,
    AuthState? authState,
    ImageEditorState? imageEditorState,
    ServerImagesState? serverImages,
    List<AppNotification>? notifications,
  }) {
    return AppState(
      gameState: gameState ?? this.gameState,
      themeState: themeState ?? this.themeState,
      authState: authState ?? this.authState,
      imageEditorState: imageEditorState ?? this.imageEditorState,
      serverImages: serverImages ?? this.serverImages,
      notifications: notifications ?? this.notifications,
    );
  }
}
