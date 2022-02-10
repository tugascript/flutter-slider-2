import 'package:flutter/material.dart';

import '../../utilities/sizes/break_points.dart';
import '../../utilities/sizes/spacing.dart';

class GridItem extends StatelessWidget {
  final BreakPoints breakPoints;
  final double maxWidth;
  final Widget child;

  const GridItem({
    Key? key,
    required this.breakPoints,
    required this.maxWidth,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final spacing = LocalSpacing.getSpacing(maxWidth);
    final width = breakPoints.getWidth(maxWidth);

    return Container(
      width: width,
      padding: EdgeInsets.all(spacing),
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: width - spacing,
        ),
        child: child,
      ),
    );
  }
}
