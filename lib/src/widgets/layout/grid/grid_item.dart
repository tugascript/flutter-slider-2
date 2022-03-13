import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final Alignment alignment;
  final double spacing;
  final double width;
  final Widget child;

  const GridItem({
    Key? key,
    required this.alignment,
    required this.spacing,
    required this.width,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.all(spacing),
      alignment: alignment,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: width - spacing * 2,
        ),
        child: child,
      ),
    );
  }
}
