import 'package:flutter/material.dart';
import 'package:v1/widgets/auth/register_modal_form.dart';
import 'package:v1/widgets/layout/auth_buttons/login_button.dart';

import '../../utilities/sizes/app_bar_sizes.dart';
import '../auth/login_modal_form.dart';
import 'auth_buttons/register_button.dart';
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
          LoginButton(
            onPressed: () => showDialog<String>(
              context: context,
              barrierDismissible: false,
              builder: (context) => LoginModalForm(ctx: context),
            ),
          ),
          RegisterButton(
            onPressed: () => showDialog<String>(
              context: context,
              barrierDismissible: false,
              builder: (context) => RegisterModalForm(ctx: context),
            ),
          ),
          ThemeButton(
            padding: sizes.btnPadding,
          ),
          SizedBox(
            width: sizes.title * 0.8,
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: child,
        ),
      ),
    );
  }
}
