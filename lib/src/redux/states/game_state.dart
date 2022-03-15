import '../../components/models/enums/difficulty_enum.dart';
import '../../components/models/enums/game_status_enum.dart';
import '../../components/models/game/game.dart';
import '../../components/models/game/position.dart';
import '../../utilities/helpers/image_divider.dart';

class GameState {
  final Puzzle puzzle;
  final Difficulty difficulty;
  final int level;
  final int time;
  final bool showPaint;
  final bool loading;

  const GameState({
    required this.puzzle,
    required this.difficulty,
    required this.level,
    required this.time,
    required this.showPaint,
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
      puzzle: Puzzle.newPuzzle(level),
      difficulty: difficulty,
      level: level,
      time: difficulty.getTime(level),
      loading: false,
      showPaint: false,
    );
  }

  //____________________ COPY METHODS ____________________

  GameState nextLevel() {
    final newLevel = level + 1;

    return GameState(
      puzzle: Puzzle.newPuzzle(newLevel),
      difficulty: difficulty,
      level: newLevel,
      time: difficulty.getTime(newLevel),
      loading: loading,
      showPaint: showPaint,
    );
  }

  GameState movePiece(Position pos) {
    return GameState(
      puzzle: puzzle.handleMove(pos),
      difficulty: difficulty,
      level: level,
      time: time,
      loading: loading,
      showPaint: showPaint,
    );
  }

  GameState shuffleNormalGame() {
    final len = level + 2;

    return GameState(
      puzzle: puzzle.shufflePuzzle(len * len),
      difficulty: difficulty,
      level: level,
      time: time,
      loading: loading,
      showPaint: showPaint,
    );
  }

  GameState updateTime() {
    final time = this.time - 1;

    return GameState(
      puzzle: time > 0 ? puzzle : puzzle.copyWith(status: GameStatusEnum.lost),
      difficulty: difficulty,
      level: level,
      time: time,
      loading: loading,
      showPaint: showPaint,
    );
  }

  GameState updateGameStatus(GameStatusEnum status) {
    return GameState(
      puzzle: puzzle.copyWith(status: status),
      difficulty: difficulty,
      level: level,
      time: time,
      loading: loading,
      showPaint: showPaint,
    );
  }

  GameState addPainters(String paint, List<List<DividerPainter>> painters) {
    return GameState(
      puzzle: puzzle.addImageToPuzzle(painters, paint),
      difficulty: difficulty,
      level: level,
      time: time,
      loading: loading,
      showPaint: showPaint,
    );
  }

  GameState copyWith(
      {Puzzle? puzzle,
      Difficulty? difficulty,
      int? level,
      int? time,
      bool? loading,
      bool? showPaint}) {
    return GameState(
      puzzle: puzzle ?? this.puzzle,
      difficulty: difficulty ?? this.difficulty,
      level: level ?? this.level,
      time: time ?? this.time,
      showPaint: showPaint ?? this.showPaint,
      loading: loading ?? this.loading,
    );
  }
}
