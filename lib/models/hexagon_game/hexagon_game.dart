import '../base/game.dart';
import '../base/position.dart';
import '../enums/game_status_enum.dart';
import 'hexagon_next.dart';
import 'triangular_piece.dart';

class HexagonGame implements Game {
  @override
  final List<List<TriangularPiece>> puzzle;
  @override
  final GameStatusEnum status;
  @override
  final HexagonNext next;

  const HexagonGame({
    required this.next,
    required this.status,
    required this.puzzle,
  });

  @override
  factory HexagonGame.newGame(int level) {
    final edgeLen = level + 1;
    final halfLen = edgeLen * 2;
    final len = halfLen * 2;
    final puzzle = <List<TriangularPiece>>[];

    for (int i = 0; i < len; i++) {
      final row = <TriangularPiece>[];
      bool inverted = true;
      int innerLen = edgeLen;

      for (int j = 0; j < innerLen; j++) {
        row.add(
          TriangularPiece(Position(i, j), inverted),
        );
      }

      puzzle.add(row);
      inverted = !inverted;

      if (!inverted) {
        if (i < halfLen) {
          innerLen++;
        } else {
          innerLen--;
        }
      }
    }

    return HexagonGame(
      next: HexagonNext(
        normal: Position(edgeLen - 1, len - 1),
        inverted: Position(edgeLen, len - 2),
      ),
      status: GameStatusEnum.starting,
      puzzle: puzzle,
    );
  }
}
