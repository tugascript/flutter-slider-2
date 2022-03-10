import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' show get;

class ImageDivider {
  static Future<List<List<DividerPainter>>> imagePuzzle(
    String name,
    int gameLength,
    bool network,
  ) async {
    final image = await _loadImage(name, network);
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

  static Future<ui.Image> _loadImage(String name, bool network) async {
    late final Uint8List imgData;

    if (network) {
      final file = await get(Uri.parse(name));
      imgData = file.bodyBytes;
    } else {
      final data = await rootBundle.load(name);
      imgData = data.buffer.asUint8List();
    }

    final image = await decodeImageFromList(imgData);
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
