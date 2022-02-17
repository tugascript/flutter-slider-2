import 'dart:math';

import '../enums/game_status_enum.dart';
import '../../utilities/helpers/image_divider.dart';
import 'classic_piece.dart';
import '../base/game.dart';
import '../base/position.dart';

class ClassicGame implements Game {
  @override
  final List<List<ClassicPiece>> puzzle;
  @override
  final GameStatusEnum status;
  @override
  final Position next;

  const ClassicGame({
    required this.next,
    required this.status,
    required this.puzzle,
  });

  @override
  factory ClassicGame.newGame(int level) {
    final len = level + 2;
    final puzzle = <List<ClassicPiece>>[];

    for (int i = 0; i < len; i++) {
      final row = <ClassicPiece>[];

      for (int j = 0; j < len; j++) {
        final pos = Position(i, j);
        row.add(ClassicPiece(pos));
      }

      puzzle.add(row);
    }

    final index = len - 1;
    puzzle[index][index].empty = true;

    return ClassicGame(
      puzzle: puzzle,
      status: GameStatusEnum.starting,
      next: Position(index, index),
    );
  }

  @override
  ClassicGame handleMove(Position pos) {
    /**
     * Handle Tap
     * 
     * Change position of pieces depending on tap position
     */
    final puzzle = this.puzzle;
    final len = puzzle.length;
    // variables
    Position next = this.next;
    GameStatusEnum status = this.status;

    // Check if position is in boundaries
    if (pos.column < len &&
        pos.row < len &&
        (next.row == pos.row || next.column == pos.column) &&
        (next.row != pos.row || next.column != pos.column)) {
      final row = pos.row;
      final column = pos.column;
      final nextRow = next.row;
      final nextColumn = next.column;

      if (row == nextRow && column != nextColumn) {
        _changeColumn(puzzle, row, column, nextColumn);
      } else if (row != nextRow && column == nextColumn) {
        _changeRow(puzzle, row, column, nextRow);
      }

      next = Position(row, column);
      status = _checkIfCompleted(len, puzzle);
    }

    return ClassicGame(
      puzzle: puzzle,
      next: next,
      status: status,
    );
  }

  @override
  ClassicGame addImageToGame(List<List<DividerPainter>> painters) {
    final puzzle = this.puzzle;
    final len = puzzle.length;

    for (int i = 0; i < len; i++) {
      for (int j = 0; j < len; j++) {
        final position = puzzle[i][j].position;
        puzzle[i][j].painter = painters[position.row][position.column];
      }
    }

    return ClassicGame(
      puzzle: puzzle,
      next: next,
      status: status,
    );
  }

  @override
  ClassicGame shuffleGame(int shuffles) {
    final puzzle = this.puzzle;
    final len = puzzle.length;
    Position next = this.next;

    for (int i = 0; i < shuffles; i++) {
      final nextRow = next.row;
      final nextColumn = next.column;

      if (i % 2 == 0) {
        int row = _generateRandomIndex(len);

        while (row == nextRow) {
          row = _generateRandomIndex(len);
        }

        _changeRow(puzzle, row, nextColumn, nextRow);
        next = Position(row, nextColumn);
      } else {
        int column = _generateRandomIndex(len);

        while (column == nextColumn) {
          column = _generateRandomIndex(len);
        }

        _changeColumn(puzzle, nextRow, column, nextColumn);
        next = Position(nextRow, column);
      }
    }

    return ClassicGame(
      puzzle: puzzle,
      status: GameStatusEnum.ongoing,
      next: next,
    );
  }

  @override
  ClassicGame updateStatus(GameStatusEnum st) {
    return ClassicGame(
      puzzle: puzzle,
      next: next,
      status: st,
    );
  }

  //____________________ Private Methods ____________________

  // This have a big O of n2 and should be optimized
  GameStatusEnum _checkIfCompleted(int len, List<List<ClassicPiece>> game) {
    for (int i = 0; i < len; i++) {
      for (int j = 0; j < len; j++) {
        final pos = game[i][j].position;

        if (pos.row != i || pos.column != j) return status;
      }
    }

    return GameStatusEnum.completed;
  }

  void _changeColumn(
    List<List<ClassicPiece>> puzzle,
    int row,
    int column,
    int nextColumn,
  ) {
    if (column < nextColumn) {
      for (int i = nextColumn; i > column; i--) {
        final currentOne = puzzle[row][i];
        final prevOne = puzzle[row][i - 1];
        puzzle[row][i] = prevOne;
        puzzle[row][i - 1] = currentOne;
      }
    } else {
      for (int i = nextColumn; i < column; i++) {
        final currentOne = puzzle[row][i];
        final nextOne = puzzle[row][i + 1];
        puzzle[row][i] = nextOne;
        puzzle[row][i + 1] = currentOne;
      }
    }
  }

  void _changeRow(
    List<List<ClassicPiece>> puzzle,
    int row,
    int column,
    int nextRow,
  ) {
    if (row < nextRow) {
      for (int i = nextRow; i > row; i--) {
        final currentOne = puzzle[i][column];
        final prevOne = puzzle[i - 1][column];
        puzzle[i][column] = prevOne;
        puzzle[i - 1][column] = currentOne;
      }
    } else {
      for (int i = nextRow; i < row; i++) {
        final currentOne = puzzle[i][column];
        final nextOne = puzzle[i + 1][column];
        puzzle[i][column] = nextOne;
        puzzle[i + 1][column] = currentOne;
      }
    }
  }

  int _generateRandomIndex(int len) {
    final rnd = Random();
    return rnd.nextInt(len);
  }
}
