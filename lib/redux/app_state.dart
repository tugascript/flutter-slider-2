import '../models/enums/difficulty_enum.dart';
import '../models/enums/theme_enum.dart';
import 'states/game_state.dart';

class AppState {
  final GameState gameState;
  final ThemeEnum themeState;

  AppState({
    required this.gameState,
    required this.themeState,
  });

  factory AppState.getInitialState() {
    final game = GameState.initialState(
      1,
      DifficultyEnum.easy,
    );
    return AppState(
      gameState: game,
      themeState: ThemeEnum.light,
    );
  }

  AppState copyWith({
    GameState? gameState,
    ThemeEnum? themeState,
  }) {
    return AppState(
      gameState: gameState ?? this.gameState,
      themeState: themeState ?? this.themeState,
    );
  }
}
