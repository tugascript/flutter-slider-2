import 'dart:math';

import './normal_piece.dart';
import './position.dart';
import '../models/enums/game_status_enum.dart';
import '../utilities/helpers/image_divider.dart';

class NormalGame {
  final List<List<NormalPiece>> puzzle;
  final Position next;
  final GameStatusEnum status;

  NormalGame({
    required this.puzzle,
    required this.next,
    required this.status,
  });

  factory NormalGame.newGame(int level) {
    final len = level + 2;
    final puzzle = <List<NormalPiece>>[];

    for (int i = 0; i < len; i++) {
      final row = <NormalPiece>[];

      for (int j = 0; j < len; j++) {
        final pos = Position(i, j);
        row.add(NormalPiece(pos));
      }

      puzzle.add(row);
    }

    final index = len - 1;
    puzzle[index][index].empty = true;

    return NormalGame(
      puzzle: puzzle,
      status: GameStatusEnum.starting,
      next: Position(index, index),
    );
  }

  NormalGame handleMove(Position pos) {
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
        _changeCollumn(puzzle, row, column, nextColumn);
      } else if (row != nextRow && column == nextColumn) {
        _changeRow(puzzle, row, column, nextRow);
      }

      next = Position(row, column);
      status = _checkIfCompleted(len, puzzle);
    }

    return NormalGame(
      puzzle: puzzle,
      next: next,
      status: status,
    );
  }

  NormalGame addImageToGame(List<List<DividerPainter>> paints) {
    final puzzle = this.puzzle;
    final len = puzzle.length;

    for (int i = 0; i < len; i++) {
      for (int j = 0; j < len; j++) {
        final position = puzzle[i][j].position;
        puzzle[i][j].painter = paints[position.row][position.column];
      }
    }

    return NormalGame(
      puzzle: puzzle,
      next: next,
      status: status,
    );
  }

  NormalGame shuffleGame(int shuffles) {
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

        _changeCollumn(puzzle, nextRow, column, nextColumn);
        next = Position(nextRow, column);
      }
    }

    return NormalGame(
      puzzle: puzzle,
      status: GameStatusEnum.ongoing,
      next: next,
    );
  }

  NormalGame updateStatus(GameStatusEnum st) {
    return NormalGame(
      puzzle: puzzle,
      next: next,
      status: st,
    );
  }

  //____________________ Private Methods ____________________

  // This have a big O of n2 and should be optimized
  GameStatusEnum _checkIfCompleted(int len, List<List<NormalPiece>> game) {
    for (int i = 0; i < len; i++) {
      for (int j = 0; j < len; j++) {
        final pos = game[i][j].position;

        if (pos.row != i || pos.column != j) return status;
      }
    }

    return GameStatusEnum.completed;
  }

  void _changeCollumn(
    List<List<NormalPiece>> puzzle,
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
    List<List<NormalPiece>> puzzle,
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
