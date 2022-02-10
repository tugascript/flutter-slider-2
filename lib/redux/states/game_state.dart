import 'package:v1/utilities/helpers/image_divider.dart';

import '../../models/enums/difficulty_enum.dart';
import '../../models/enums/game_status_enum.dart';
import '../../models/game_record.dart';
import '../../models/normal_game.dart';
import '../../models/position.dart';

class GameState {
  final NormalGame game;
  final Difficulty difficulty;
  final int level;
  final int time;
  final int moves;
  final Map<int, GameRecord> records;
  final bool loading;

  GameState({
    required this.game,
    required this.difficulty,
    required this.level,
    required this.time,
    required this.moves,
    required this.records,
    required this.loading,
  });

  factory GameState.initialState(
    int level,
    DifficultyEnum difficultyEnum,
  ) {
    final difficulty = Difficulty(
      difficultyEnum: difficultyEnum,
    );
    return GameState(
      game: NormalGame.newGame(level),
      difficulty: difficulty,
      level: level,
      time: difficulty.getTime(level),
      moves: 0,
      records: const {},
      loading: false,
    );
  }

  //____________________ COPY METHODS ____________________

  GameState nextLevel() {
    final newLevel = level + 1;

    final newRecords = {
      ...records,
      level: GameRecord(
        moves: moves,
        time: difficulty.getTime(level) - time,
      ),
    };

    return GameState(
      game: NormalGame.newGame(newLevel),
      difficulty: difficulty,
      records: newRecords,
      level: newLevel,
      moves: 0,
      time: difficulty.getTime(newLevel),
      loading: loading,
    );
  }

  GameState toogleLoading() {
    return GameState(
      game: game,
      difficulty: difficulty,
      level: level,
      time: time,
      records: records,
      moves: moves,
      loading: !loading,
    );
  }

  GameState movePiece(Position pos) {
    return GameState(
      game: game.handleMove(pos),
      moves: moves + 1,
      difficulty: difficulty,
      level: level,
      time: time,
      records: records,
      loading: loading,
    );
  }

  GameState shuffleNormalGame() {
    return GameState(
      game: game.shuffleGame(
        difficulty.getShuffles(level),
      ),
      difficulty: difficulty,
      level: level,
      moves: moves,
      records: records,
      time: time,
      loading: loading,
    );
  }

  GameState updateTime() {
    final time = this.time - 1;

    return GameState(
      game: time > 0
          ? game
          : game.updateStatus(
              GameStatusEnum.lost,
            ),
      difficulty: difficulty,
      level: level,
      moves: moves,
      time: time,
      records: records,
      loading: loading,
    );
  }

  GameState updateGameStatus(GameStatusEnum status) {
    return GameState(
      game: game.updateStatus(status),
      difficulty: difficulty,
      level: level,
      moves: moves,
      time: time,
      records: records,
      loading: loading,
    );
  }

  GameState addPainters(List<List<DividerPainter>> painters) {
    return GameState(
      game: game.addImageToGame(painters),
      difficulty: difficulty,
      level: level,
      moves: moves,
      time: time,
      records: records,
      loading: loading,
    );
  }
}
