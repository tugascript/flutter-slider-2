import '../models/enums/difficulty_enum.dart';
import '../models/enums/theme_enum.dart';
import 'states/auth_state.dart';
import 'states/single_player_state.dart';

class AppState {
  final SinglePlayerState singlePlayerState;
  final ThemeEnum themeState;
  final AuthState authState;

  AppState({
    required this.singlePlayerState,
    required this.themeState,
    required this.authState,
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
    );
  }

  AppState copyWith({
    SinglePlayerState? singlePlayerState,
    ThemeEnum? themeState,
    AuthState? authState,
  }) {
    return AppState(
      singlePlayerState: singlePlayerState ?? this.singlePlayerState,
      themeState: themeState ?? this.themeState,
      authState: authState ?? this.authState,
    );
  }
}
