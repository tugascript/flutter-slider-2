import 'dart:math';

import '../../../utilities/helpers/image_divider.dart';
import '../enums/game_status_enum.dart';
import 'piece.dart';
import 'position.dart';

class Puzzle {
  final List<List<Piece>> table;
  final GameStatusEnum status;
  final Position next;
  final int moves;
  final String? image;

  const Puzzle({
    required this.next,
    required this.status,
    required this.table,
    required this.moves,
    this.image,
  });

  factory Puzzle.newPuzzle(int level) {
    final len = level + 2;
    final table = <List<Piece>>[];

    for (int i = 0; i < len; i++) {
      final row = <Piece>[];

      for (int j = 0; j < len; j++) {
        final pos = Position(i, j);
        row.add(Piece(pos));
      }

      table.add(row);
    }

    final index = len - 1;
    table[index][index].empty = true;

    return Puzzle(
      table: table,
      status: GameStatusEnum.starting,
      next: Position(index, index),
      moves: 0,
    );
  }

  Puzzle handleMove(Position pos) {
    /**
     * Handle Tap
     * 
     * Change position of pieces depending on tap position
     */
    final table = this.table;
    final len = table.length;
    // variables
    Position next = this.next;
    GameStatusEnum status = this.status;
    int moves = this.moves;
    // column row
    final row = pos.row;
    final column = pos.column;
    final nextRow = next.row;
    final nextColumn = next.column;

    // Check if position is in boundaries
    if (column < len &&
        row < len &&
        (nextRow == row || nextColumn == column) &&
        (nextRow != row || nextColumn != column)) {
      if (row == nextRow && column != nextColumn) {
        _changeColumn(table, row, column, nextColumn);
      } else if (row != nextRow && column == nextColumn) {
        _changeRow(table, row, column, nextRow);
      }

      next = Position(row, column);
      status = _checkIfCompleted(len, table);
      moves++;
    }

    return Puzzle(
      table: table,
      next: next,
      status: status,
      image: image,
      moves: moves,
    );
  }

  Puzzle addImageToPuzzle(List<List<DividerPainter>> painters, String image) {
    final table = this.table;
    final len = table.length;

    for (int i = 0; i < len; i++) {
      for (int j = 0; j < len; j++) {
        final position = table[i][j].position;
        table[i][j].painter = painters[position.row][position.column];
      }
    }

    return Puzzle(
      table: table,
      next: next,
      status: status,
      image: image,
      moves: moves,
    );
  }

  Puzzle shufflePuzzle(int shuffles) {
    final table = this.table;
    final len = table.length;
    Position next = this.next;

    for (int i = 0; i < shuffles; i++) {
      final nextRow = next.row;
      final nextColumn = next.column;

      if (i % 2 == 0) {
        int row = _generateRandomIndex(len);

        while (row == nextRow) {
          row = _generateRandomIndex(len);
        }

        _changeRow(table, row, nextColumn, nextRow);
        next = Position(row, nextColumn);
      } else {
        int column = _generateRandomIndex(len);

        while (column == nextColumn) {
          column = _generateRandomIndex(len);
        }

        _changeColumn(table, nextRow, column, nextColumn);
        next = Position(nextRow, column);
      }
    }

    return Puzzle(
      table: table,
      status: GameStatusEnum.ongoing,
      next: next,
      image: image,
      moves: moves,
    );
  }

  Puzzle copyWith({
    List<List<Piece>>? table,
    GameStatusEnum? status,
    Position? next,
    String? image,
    int? moves,
  }) {
    return Puzzle(
      next: next ?? this.next,
      status: status ?? this.status,
      table: table ?? this.table,
      image: image ?? this.image,
      moves: moves ?? this.moves,
    );
  }

  //____________________ Private Methods ____________________

  // This have a big O of n2 and should be optimized
  GameStatusEnum _checkIfCompleted(int len, List<List<Piece>> game) {
    for (int i = 0; i < len; i++) {
      for (int j = 0; j < len; j++) {
        final pos = game[i][j].position;

        if (pos.row != i || pos.column != j) return status;
      }
    }

    return GameStatusEnum.completed;
  }

  void _changeColumn(
    List<List<Piece>> puzzle,
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
    List<List<Piece>> puzzle,
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
