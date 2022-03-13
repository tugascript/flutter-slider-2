import 'package:flutter/material.dart';

class DrawTriangle extends CustomPainter {
  final Color color;
  final bool inverted;

  const DrawTriangle(this.color, this.inverted);

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    final painter = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    if (inverted) {
      path.moveTo(size.width / 2, size.height);
      path.lineTo(size.width, 0);
      path.lineTo(0, 0);
    } else {
      path.moveTo(size.width / 2, 0);
      path.lineTo(0, size.height);
      path.lineTo(size.height, size.width);
    }

    path.close();

    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
