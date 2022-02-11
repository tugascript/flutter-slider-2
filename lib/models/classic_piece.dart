import 'package:flutter/rendering.dart';

import 'base/piece.dart';
import 'position.dart';

class ClassicPiece implements Piece {
  // Variables
  @override
  final Position position;

  @override
  bool empty = false;
  @override
  CustomPainter? painter;

  ClassicPiece(this.position);
}
