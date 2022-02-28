import 'package:flutter/material.dart';

import '../../../utilities/sizes/nav_btn_sizes.dart';

class RegisterButton extends StatelessWidget {
  final VoidCallback onPressed;

  const RegisterButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isLightTheme = colorScheme.primary.value == 0xFF02569B;
    final width = MediaQuery.of(context).size.width;
    final sizes = NavBtnSizes.getNavBtnSizes(width);
    final halfPadding = sizes.padding / 2;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: sizes.padding,
        horizontal: halfPadding,
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
            color: isLightTheme ? colorScheme.primary : colorScheme.onPrimary,
            width: sizes.borderWidth,
          ),
        ),
        child: Text(
          'Sign Up',
          style: TextStyle(
            fontSize: sizes.fontSize,
            color: isLightTheme ? colorScheme.primary : colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
