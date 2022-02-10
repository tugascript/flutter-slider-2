import 'package:v1/utilities/helpers/image_divider.dart';

import './position.dart';

class NormalPiece {
  // Single Assignment
  final Position position;

  // Variables
  bool empty = false;
  DividerPainter? painter;

  NormalPiece(this.position);
}
