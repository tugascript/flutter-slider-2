import '../../models/enums/difficulty_enum.dart';

class NormalGameScreenArguments {
  final bool newGame;
  final int level;
  final DifficultyEnum difficulty;

  NormalGameScreenArguments(
    this.newGame,
    this.level,
    this.difficulty,
  );
}
