import 'package:flutter/rendering.dart';

import '../base/piece.dart';
import '../base/position.dart';

class TriangularPiece implements Piece {
  @override
  final Position position;
  final bool inverted;

  @override
  bool empty = false;
  @override
  CustomPainter? painter;

  TriangularPiece(this.position, this.inverted);
}
