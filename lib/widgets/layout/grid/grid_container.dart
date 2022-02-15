import 'package:flutter/material.dart';
import 'package:v1/utilities/sizes/break_point.dart';
import 'package:v1/utilities/sizes/screen_sizes.dart';
import 'package:v1/utilities/sizes/spacing.dart';

import 'grid_item.dart';

class GridContainer extends StatelessWidget {
  final List<GridItemInput> items;

  const GridContainer({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final part = width / 12;
    final screenSize = BreakPoint(width).screenSize;
    final spacing = LocalSpacing.value[screenSize]!;

    List<GridItem> children = [];
    int total = 0;
    final parents = <List<Widget>>[];

    for (int i = 0; i < items.length; i++) {
      if (total > 12) {
        parents.add(children);
        children = [];
        total = 0;
      }

      final item = items[i];
      final size = item.breakPoints[screenSize] ?? 12;
      total += size;
      children.add(
        GridItem(
          alignment: item.alignment,
          spacing: spacing,
          width: part * size,
          child: item.child,
        ),
      );
    }

    parents.add(children);

    if (parents.length > 1) {
      return _Column(
        children: [
          for (int i = 0; i < parents.length; i++)
            _Row(
              children: parents[i],
            )
        ],
      );
    }

    return _Row(children: parents[0]);
  }
}

class GridItemInput {
  final Map<ScreenSizesEnum, int> breakPoints;
  final Alignment alignment;
  final Widget child;

  GridItemInput({
    required this.breakPoints,
    required this.alignment,
    required this.child,
  });
}

class _Row extends StatelessWidget {
  final List<Widget> children;

  const _Row({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    );
  }
}

class _Column extends StatelessWidget {
  final List<Widget> children;

  const _Column({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    );
  }
}
