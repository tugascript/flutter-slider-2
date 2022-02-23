import '../../models/enums/difficulty_enum.dart';

class GameScreenArguments {
  final bool newGame;
  final int level;
  final DifficultyEnum difficulty;

  GameScreenArguments(
    this.newGame,
    this.level,
    this.difficulty,
  );
}
