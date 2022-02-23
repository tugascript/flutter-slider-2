import 'package:flutter/rendering.dart';
import 'position.dart';

class Piece {
  // Variables
  final Position position;

  bool empty = false;
  CustomPainter? painter;

  Piece(this.position);
}
