import 'package:flutter/material.dart';

import '../../../components/sizes/layout/nav_btn_sizes.dart';

class RegisterButton extends StatelessWidget {
  final VoidCallback onPressed;

  const RegisterButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final color = colorScheme.primary.value == 0xFF02569B
        ? colorScheme.primary
        : colorScheme.onPrimary;
    final width = MediaQuery.of(context).size.width;
    final sizes = NavBtnSizes.getNavBtnSizes(width);

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: sizes.padding,
        horizontal: sizes.padding / 2,
      ),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                sizes.borderRadius,
              ),
            ),
          ),
          side: BorderSide(
            color: color,
            width: sizes.borderWidth,
          ),
        ),
        child: Text(
          'Sign Up',
          style: TextStyle(
            fontSize: sizes.fontSize,
            color: color,
          ),
        ),
      ),
    );
  }
}
