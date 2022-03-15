import 'package:flutter/material.dart';

import '../../components/sizes/layout/loading_sizes.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = LoadingSizes.getLoadingSizes(width);
    final colorScheme = Theme.of(context).colorScheme;

    return Center(
      child: SizedBox(
        width: sizes.size,
        height: sizes.size,
        child: CircularProgressIndicator(
          strokeWidth: sizes.stroke,
          color: colorScheme.primary.value == 0xFF02569B
              ? colorScheme.primary
              : colorScheme.onPrimary,
        ),
      ),
    );
  }
}
