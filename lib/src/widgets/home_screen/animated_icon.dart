import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class LocalAnimatedIcon extends StatelessWidget {
  final double size;

  const LocalAnimatedIcon({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLightTheme =
        Theme.of(context).colorScheme.primary.value == 0xFF02569B;

    return AnimatedCrossFade(
      firstChild: _Icon(
        size: size,
        theme: 'light',
      ),
      secondChild: _Icon(
        size: size,
        theme: 'dark',
      ),
      crossFadeState:
          isLightTheme ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(seconds: 1),
    );
  }
}

class _Icon extends StatelessWidget {
  final double size;
  final String theme;

  const _Icon({
    Key? key,
    required this.size,
    required this.theme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: RiveAnimation.asset(
        'animations/${theme}_theme_animation.riv',
      ),
    );
  }
}
