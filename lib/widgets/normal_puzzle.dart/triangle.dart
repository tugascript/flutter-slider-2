import 'package:flutter/material.dart';
import 'package:v1/utilities/helpers/draw_triangle.dart';

class Triangle extends StatelessWidget {
  const Triangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: const CustomPaint(
        painter: DrawTriangle(Colors.black, true),
        child: SizedBox(
          width: 600,
          height: 600,
        ),
      ),
    );
  }
}
