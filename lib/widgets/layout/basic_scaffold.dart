import 'package:flutter/material.dart';

import '../../utilities/sizes/app_bar_sizes.dart';
import 'auth_buttons/auth_buttons.dart';
import 'normal_icon.dart';
import 'theme_button.dart';

class BasicScaffold extends StatelessWidget {
  final String title;
  final Widget child;
  final Widget? bottomNavigation;

  const BasicScaffold({
    Key? key,
    required this.title,
    required this.child,
    this.bottomNavigation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = AppBarSizes.getAppBarSizes(width);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: sizes.height,
        title: Row(
          children: [
            NormalIcon(size: sizes.icon),
            SizedBox(
              width: sizes.title,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: sizes.title,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        actions: [
          const AuthButtons(),
          ThemeButton(
            padding: sizes.btnPadding,
          ),
          SizedBox(
            width: sizes.title * 0.8,
          ),
        ],
      ),
      body: Center(
        child: child,
      ),
      bottomNavigationBar: bottomNavigation,
    );
  }
}
