import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImageDivider {
  static Future<List<List<DividerPainter>>> imagePuzzle(
    String name,
    int gameLength,
  ) async {
    final image = await _loadImage(name);
    final squareSize = image.width / gameLength;
    final rows = <List<DividerPainter>>[];

    for (int i = 0; i < gameLength; i++) {
      final columns = <DividerPainter>[];
      final column = i * squareSize;

      for (int j = 0; j < gameLength; j++) {
        final row = j * squareSize;

        columns.add(
          DividerPainter(
            image,
            Rect.fromPoints(
              ui.Offset(row, column),
              ui.Offset(row + squareSize, column + squareSize),
            ),
          ),
        );
      }

      rows.add(columns);
    }
    return rows;
  }

  static Future<ui.Image> _loadImage(String name) async {
    final data = await rootBundle.load(name);
    final image = await decodeImageFromList(data.buffer.asUint8List());
    return image;
  }
}

class DividerPainter extends CustomPainter {
  final ui.Image image;
  final Rect crop;

  const DividerPainter(this.image, this.crop);

  @override
  void paint(Canvas canvas, Size size) {
    // Since the image is a square I'll only take the width;
    final imageWidth = image.width.toDouble();
    final rect = Offset.zero & size;
    final imageSize = Size(imageWidth, imageWidth);
    final sizes = applyBoxFit(BoxFit.fitWidth, imageSize, size);
    final ouput = Alignment.center.inscribe(sizes.destination, rect);
    canvas.drawImageRect(image, crop, ouput, Paint());
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
