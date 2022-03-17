import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../screens/home_screen.dart';

class NormalIcon extends StatelessWidget {
  final double size;

  const NormalIcon({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLightTheme =
        Theme.of(context).colorScheme.primary.value == 0xFF02569B;
    final icon = isLightTheme ? 'light' : 'dark';

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          final router = GoRouter.of(context);

          if (router.location != HomeScreen.routeName) {
            router.push(HomeScreen.routeName);
          }
        },
        child: SvgPicture.asset(
          'images/icon_$icon.svg',
          height: size,
          width: size,
        ),
      ),
    );
  }
}
