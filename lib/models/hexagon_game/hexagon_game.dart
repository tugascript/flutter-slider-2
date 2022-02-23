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
    final halfLen = (len / 2).floor();
    // variables
    HexagonNext next = this.next;

    if (pos.row < len) {
      final currentRow = puzzle[pos.row];

      if (pos.column < currentRow.length) {
        final piece = currentRow[pos.column];
        final nNext = next.normal;
        final iNext = next.inverted;
        final nextPos = piece.inverted ? iNext : nNext;
        print('CurrentPos: ${pos.row}, ${pos.column}');
        print('NextPos: ${nextPos.row}, ${nextPos.column}');

        if (nNext.row > iNext.row) {
          if (pos.row == nextPos.row) {
            _moveHorizontally(puzzle, pos, next, piece);
          } else {}
        } else {
          // pieces move diagonally
          if (pos.column == nextPos.column) {
            _moveRowDiagonally(
              puzzle,
              pos.row,
              pos.column,
              nextPos.row,
            );
          } else if (pos.column < nextPos.column) {
            bool diagonal = _isDiagonal(pos, nextPos);

            if (diagonal) {
              _moveAllDiagonally(
                puzzle,
                pos.row,
                pos.column,
                nextPos.column,
              );
            }
          }
        }
      }
    }

    print(next.inverted.column);
    return HexagonGame(
      next: next,
      status: status,
      puzzle: puzzle,
    );
  }

  @override
  HexagonGame addImageToGame(List<List<CustomPainter>> painters) {
    return this;
  }

  @override
  HexagonGame shuffleGame(int shuffles) {
    return HexagonGame(
      next: next,
      status: GameStatusEnum.ongoing,
      puzzle: puzzle,
    );
  }

  @override
  HexagonGame updateStatus(GameStatusEnum st) {
    return this;
  }

  bool _isDiagonal(Position pos, Position nextPos) {
    for (int i = nextPos.column; i > pos.column; i--) {
      if ((nextPos.column - i == pos.column &&
              nextPos.row - i - 1 == pos.row) ||
          (nextPos.column + i == pos.column &&
              nextPos.row + i + 1 == pos.row)) {
        return true;
      }
    }

    return false;
  }

  void _moveRowDiagonally(
    List<List<TriangularPiece>> puzzle,
    int row,
    int column,
    int nextRow,
  ) {
    if (row < nextRow) {
      for (int i = nextRow; i > row; i--) {
        final curOne = puzzle[i][column];
        final prevOne = puzzle[i - 2][column];
        puzzle[i][column] = prevOne;
        puzzle[i - 2][column] = curOne;
      }
    } else {
      for (int i = nextRow; i < row; i++) {
        final curOne = puzzle[i][column];
        final nextOne = puzzle[i + 2][column];
        puzzle[i][column] = nextOne;
        puzzle[i + 2][column] = curOne;
      }
    }
  }

  void _moveAllDiagonally(
    List<List<TriangularPiece>> puzzle,
    int row,
    int column,
    int nextColumn,
  ) {
    if (column < nextColumn) {
      for (int i = nextColumn; i > column; i--) {
        final curOne = puzzle[i][i];
        final prevOne = puzzle[i - 2][i - 1];
        puzzle[i][i] = prevOne;
        puzzle[i - 2][i - 1] = curOne;
      }
    } else {
      for (int i = nextColumn; i < column; i++) {
        final curOne = puzzle[i][i];
        final prevOne = puzzle[i + 2][i + 1];
        puzzle[i][i] = prevOne;
        puzzle[i + 2][i + 1] = curOne;
      }
    }
  }

  void _moveHorizontally(
    List<List<TriangularPiece>> puzzle,
    Position pos,
    HexagonNext next,
    TriangularPiece piece,
  ) {
    final row1 = pos.row;
    late final int nextColumn1;
    late final int nextColumn2;
    late final int row2;

    if (piece.inverted) {
      nextColumn1 = next.inverted.column;
      nextColumn2 = next.normal.column;
      row2 = next.normal.row;
      next.inverted = pos;
      next.normal = Position(
        row2,
        nextColumn1 == nextColumn2 ? pos.column : pos.column - 1,
      );
    } else {
      nextColumn1 = next.normal.column;
      nextColumn2 = next.inverted.column;
      row2 = next.inverted.row;
      next.normal = pos;
      next.inverted = Position(
        row2,
        nextColumn1 == nextColumn2 ? pos.column : pos.column - 1,
      );
    }

    if (pos.column < nextColumn1) {
      for (int i = nextColumn1; i > pos.column; i--) {
        final prev = i - 1;

        final curOne = puzzle[row1][i];
        final prevOne = puzzle[row1][prev];
        puzzle[row1][i] = prevOne;
        puzzle[row1][prev] = curOne;

        if (nextColumn1 == nextColumn2) {
          final curTwo = puzzle[row2][i];
          final prevTwo = puzzle[row2][prev];
          puzzle[row2][i] = prevTwo;
          puzzle[row2][prev] = curTwo;
        } else {
          final j = i - 1;
          final jPrev = j - 1;

          if (jPrev > -1) {
            final curTwo = puzzle[row2][j];
            final prevTwo = puzzle[row2][jPrev];
            puzzle[row2][j] = prevTwo;
            puzzle[row2][jPrev] = curTwo;
          }
        }
      }
    } else {
      for (int i = nextColumn1; i < pos.column; i++) {
        final next = i + 1;

        final curOne = puzzle[row1][i];
        final nextOne = puzzle[row1][next];
        puzzle[row1][i] = nextOne;
        puzzle[row1][next] = curOne;

        if (nextColumn1 == nextColumn2) {
          final curTwo = puzzle[row2][i];
          final nextTwo = puzzle[row2][next];
          puzzle[row2][i] = nextTwo;
          puzzle[row2][next] = curTwo;
        } else {
          final j = i - 1;
          final jNext = i;

          if (jNext < pos.column - 1) {
            final curTwo = puzzle[row2][j];
            final nextTwo = puzzle[row2][jNext];
            puzzle[row2][j] = nextTwo;
            puzzle[row2][jNext] = curTwo;
          }
        }
      }
    }
  }
}
