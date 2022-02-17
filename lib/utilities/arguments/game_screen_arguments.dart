import 'package:v1/models/enums/game_type_enum.dart';

import '../../models/enums/difficulty_enum.dart';

class GameScreenArguments {
  final bool newGame;
  final GameTypeEnum gameTypeEnum;
  final int level;
  final DifficultyEnum difficulty;

  GameScreenArguments(
    this.newGame,
    this.gameTypeEnum,
    this.level,
    this.difficulty,
  );
}
