import 'package:v1/models/base/piece.dart';

import '../position.dart';
import '../../utilities/helpers/image_divider.dart';
import '../enums/game_status_enum.dart';

abstract class Game {
  final Position next;
  final GameStatusEnum status;
  final List<List<Piece>> puzzle;

  Game({
    required this.next,
    required this.status,
    required this.puzzle,
  });

  Game handleMove(Position pos) => this;
  Game addImageToGame(List<List<DividerPainter>> painters) => this;
  Game shuffleGame(int shuffles) => this;
  Game updateStatus(GameStatusEnum st) => this;
}
