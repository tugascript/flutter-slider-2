import 'package:flutter/material.dart';

import '../../../components/sizes/layout/nav_btn_sizes.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onPressed;

  const LoginButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isLightTheme = colorScheme.primary.value == 0xFF02569B;
    final width = MediaQuery.of(context).size.width;
    final sizes = NavBtnSizes.getNavBtnSizes(width);

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: sizes.padding,
        horizontal: sizes.padding / 2,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                sizes.borderRadius,
              ),
            ),
          ),
          primary: isLightTheme ? null : colorScheme.onPrimary,
          onPrimary: isLightTheme ? null : colorScheme.primary,
        ),
        child: Text(
          'Sign In',
          style: TextStyle(
            fontSize: sizes.fontSize,
          ),
        ),
      ),
    );
  }
}
