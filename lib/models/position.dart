class Position {
  final int row;
  final int column;

  Position(this.row, this.column);

  Position updatePosition({int? row, int? column}) {
    return Position(row ?? this.row, column ?? this.column);
  }
}
