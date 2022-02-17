import 'package:flutter/rendering.dart';

import 'position.dart';

abstract class Piece {
  // Single Assignment
  final Position position;

  // Variables
  bool empty = false;
  CustomPainter? painter;

  Piece(this.position);
}
