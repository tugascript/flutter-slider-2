import '../../models/enums/difficulty_enum.dart';
import '../../models/enums/game_status_enum.dart';
import '../../models/game/game.dart';
import '../../models/game/position.dart';
import '../../utilities/helpers/image_divider.dart';

class SinglePlayerState {
  final Game game;
  final Difficulty difficulty;
  final int level;
  final int time;
  final int moves;
  final bool showPaint;
  final bool loading;

  const SinglePlayerState({
    required this.game,
    required this.difficulty,
    required this.level,
    required this.time,
    required this.moves,
    required this.showPaint,
    required this.loading,
  });

  factory SinglePlayerState.initialState(
    int level,
    DifficultyEnum difficultyEnum,
  ) {
    final difficulty = Difficulty(
      difficultyEnum: difficultyEnum,
    );
    return SinglePlayerState(
      game: Game.newGame(level),
      difficulty: difficulty,
      level: level,
      time: difficulty.getTime(level),
      moves: 0,
      loading: false,
      showPaint: false,
    );
  }

  //____________________ COPY METHODS ____________________

  SinglePlayerState nextLevel() {
    final newLevel = level + 1;

    return SinglePlayerState(
      game: Game.newGame(newLevel),
      difficulty: difficulty,
      level: newLevel,
      moves: 0,
      time: difficulty.getTime(newLevel),
      loading: loading,
      showPaint: showPaint,
    );
  }

  SinglePlayerState changeLoading(bool l) {
    return SinglePlayerState(
      game: game,
      difficulty: difficulty,
      level: level,
      time: time,
      moves: moves,
      loading: l,
      showPaint: showPaint,
    );
  }

  SinglePlayerState movePiece(Position pos) {
    return SinglePlayerState(
      game: game.handleMove(pos),
      moves: moves + 1,
      difficulty: difficulty,
      level: level,
      time: time,
      loading: loading,
      showPaint: showPaint,
    );
  }

  SinglePlayerState shuffleNormalGame() {
    final len = level + 2;

    return SinglePlayerState(
      game: game.shuffleGame(len * len),
      difficulty: difficulty,
      level: level,
      moves: moves,
      time: time,
      loading: loading,
      showPaint: showPaint,
    );
  }

  SinglePlayerState updateTime() {
    final time = this.time - 1;

    return SinglePlayerState(
      game: time > 0
          ? game
          : game.updateStatus(
              GameStatusEnum.lost,
            ),
      difficulty: difficulty,
      level: level,
      moves: moves,
      time: time,
      loading: loading,
      showPaint: showPaint,
    );
  }

  SinglePlayerState updateGameStatus(GameStatusEnum status) {
    return SinglePlayerState(
      game: game.updateStatus(status),
      difficulty: difficulty,
      level: level,
      moves: moves,
      time: time,
      loading: loading,
      showPaint: showPaint,
    );
  }

  SinglePlayerState addPainters(
      String paint, List<List<DividerPainter>> painters) {
    return SinglePlayerState(
      game: game.addImageToGame(painters, paint),
      difficulty: difficulty,
      level: level,
      moves: moves,
      time: time,
      loading: loading,
      showPaint: true,
    );
  }

  SinglePlayerState changePaint(bool p) {
    return SinglePlayerState(
      game: game,
      difficulty: difficulty,
      level: level,
      time: time,
      moves: moves,
      showPaint: p,
      loading: loading,
    );
  }
}
