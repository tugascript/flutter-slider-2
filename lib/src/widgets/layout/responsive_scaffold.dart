import 'package:flutter/material.dart';

import '../../components/sizes/layout/app_bar_sizes.dart';
import 'auth_buttons/auth_buttons.dart';
import 'drawer/auth_list_view.dart';
import 'normal_icon.dart';
import 'theme_button.dart';

class ResponsiveScaffold extends StatelessWidget {
  final String title;
  final Widget child;

  const ResponsiveScaffold({
    Key? key,
    required this.title,
    required this.child,
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
            Flexible(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: sizes.title,
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                maxLines: 1,
              ),
            ),
          ],
        ),
        actions: const [
          AuthButtons(),
          ThemeButton(),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: child,
        ),
      ),
      endDrawer: const Drawer(
        child: AuthListView(),
      ),
    );
  }
}
