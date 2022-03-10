import '../models/app_notification.dart';

import '../models/enums/difficulty_enum.dart';
import '../models/enums/theme_enum.dart';
import 'states/auth_state.dart';
import 'states/image_editor_state.dart';
import 'states/server_images_state.dart';
import 'states/single_player_state.dart';

class AppState {
  final SinglePlayerState singlePlayerState;
  final ThemeEnum themeState;
  final AuthState authState;
  final ImageEditorState imageEditorState;
  final ServerImagesState serverImages;
  final List<AppNotification> notifications;

  AppState({
    required this.singlePlayerState,
    required this.themeState,
    required this.authState,
    required this.imageEditorState,
    required this.serverImages,
    required this.notifications,
  });

  factory AppState.getInitialState() {
    final game = SinglePlayerState.initialState(
      1,
      DifficultyEnum.easy,
    );
    return AppState(
      singlePlayerState: game,
      themeState: ThemeEnum.light,
      authState: AuthState.initialState(),
      imageEditorState: ImageEditorState.initialState(),
      serverImages: ServerImagesState.initialState(),
      notifications: const [],
    );
  }

  AppState copyWith({
    SinglePlayerState? singlePlayerState,
    ThemeEnum? themeState,
    AuthState? authState,
    ImageEditorState? imageEditorState,
    ServerImagesState? serverImages,
    List<AppNotification>? notifications,
  }) {
    return AppState(
      singlePlayerState: singlePlayerState ?? this.singlePlayerState,
      themeState: themeState ?? this.themeState,
      authState: authState ?? this.authState,
      imageEditorState: imageEditorState ?? this.imageEditorState,
      serverImages: serverImages ?? this.serverImages,
      notifications: notifications ?? this.notifications,
    );
  }
}
