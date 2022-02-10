import 'package:flutter/material.dart';
import 'package:v1/widgets/layout/grid_item.dart';

import '../../utilities/sizes/break_points.dart';

class GridContainer extends StatelessWidget {
  final List<GridItemInput> inputs;

  const GridContainer({
    Key? key,
    required this.inputs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return _getCorrectWidget(inputs, width);
  }
}

class GridItemInput {
  final BreakPoints breakPoints;
  final Widget child;

  GridItemInput({
    required this.breakPoints,
    required this.child,
  });
}

Widget _getCorrectWidget(
  List<GridItemInput> inputs,
  double width,
) {
  List<GridItem> children = [];
  int total = 0;
  final parents = <List<Widget>>[];

  for (int i = 0; i < inputs.length; i++) {
    final input = inputs[i];
    total += input.breakPoints.getBreakPointValue(width);

    if (total > 12) {
      parents.add(children);
      children = [];
      total = 0;
    }

    children.add(
      GridItem(
        breakPoints: input.breakPoints,
        maxWidth: width,
        child: input.child,
      ),
    );
  }

  if (children.isNotEmpty) {
    parents.add(children);
  }

  if (parents.length > 1) {
    return _Column(
      children: [
        for (int i = 0; i < parents.length; i++)
          Row(
            children: parents[i],
          )
      ],
    );
  } else {
    return _Row(children: parents[0]);
  }
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
