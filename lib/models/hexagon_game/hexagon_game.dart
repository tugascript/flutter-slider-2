import 'package:flutter/rendering.dart';

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

    bool inverted = true;
    int innerLen = edgeLen;
    for (int i = 0; i < len; i++) {
      final row = <TriangularPiece>[];

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

    final next = HexagonNext(
      normal: Position(len - 1, level),
      inverted: Position(len - 2, edgeLen),
    );
    puzzle[next.normal.row][next.normal.column].empty = true;
    puzzle[next.inverted.row][next.inverted.column].empty = true;

    return HexagonGame(
      next: next,
      status: GameStatusEnum.starting,
      puzzle: puzzle,
    );
  }

  @override
  HexagonGame handleMove(Position pos) {
    final puzzle = this.puzzle;
    final len = puzzle.length;
    final halfLen = len / 2;
    final edgeLen = halfLen / 2;
    // variables
    GameStatusEnum status = this.status;

    if (pos.row < len) {
      final currentRow = puzzle[pos.row];

      if (pos.column < currentRow.length) {
        final currentPiece = currentRow[pos.column];
        final nextPos = currentPiece.inverted ? next.inverted : next.normal;
      }
    }

    return this;
  }

  @override
  HexagonGame addImageToGame(List<List<CustomPainter>> painters) {
    return this;
  }

  @override
  HexagonGame shuffleGame(int shuffles) {
    return this;
  }

  @override
  HexagonGame updateStatus(GameStatusEnum st) {
    return this;
  }
}
