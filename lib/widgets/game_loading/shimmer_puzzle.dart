import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPuzzle extends StatelessWidget {
  final double size;
  final int length;
  final double pieceRadius;
  final double pieceMargin;

  const ShimmerPuzzle({
    Key? key,
    required this.size,
    required this.length,
    required this.pieceRadius,
    required this.pieceMargin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pieceSize = size / length;

    return SizedBox(
      width: size,
      height: size,
      child: GridView.count(
        crossAxisCount: length,
        children: [
          for (int i = 0; i < length * length; i++)
            Shimmer.fromColors(
              baseColor: Colors.grey.shade600,
              highlightColor: Colors.grey.shade400,
              child: Container(
                height: pieceSize,
                width: pieceSize,
                decoration: BoxDecoration(
                  color: Colors.grey.shade600,
                  borderRadius: BorderRadius.all(
                    Radius.circular(pieceRadius),
                  ),
                ),
                margin: EdgeInsets.all(
                  pieceMargin,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
