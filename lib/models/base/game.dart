import '../../utilities/helpers/image_divider.dart';
import '../enums/game_status_enum.dart';
import 'piece.dart';
import 'position.dart';

abstract class Game {
  final dynamic next;
  final GameStatusEnum status;
  final List<List<Piece>> puzzle;

  Game({
    required this.next,
    required this.status,
    required this.puzzle,
  });

  factory Game.newGame(int level) => _Game(
        next: Position(0, 0),
        status: GameStatusEnum.starting,
        puzzle: [[]],
      );
  Game handleMove(Position pos) => this;
  Game addImageToGame(List<List<DividerPainter>> painters) => this;
  Game shuffleGame(int shuffles) => this;
  Game updateStatus(GameStatusEnum st) => this;
}

class _Game extends Game {
  _Game({
    required Position next,
    required GameStatusEnum status,
    required List<List<Piece>> puzzle,
  }) : super(
          next: next,
          status: status,
          puzzle: puzzle,
        );
}
