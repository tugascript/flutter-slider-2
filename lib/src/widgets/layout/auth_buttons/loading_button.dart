import 'package:flutter/material.dart';

import '../../../components/sizes/layout/nav_btn_sizes.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = NavBtnSizes.getNavBtnSizes(width);

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.6),
        borderRadius: BorderRadius.all(
          Radius.circular(sizes.borderRadius),
        ),
      ),
      margin: EdgeInsets.symmetric(
        vertical: sizes.padding,
        horizontal: sizes.padding / 2,
      ),
      width: sizes.fontSize * 6,
    );
  }
}
