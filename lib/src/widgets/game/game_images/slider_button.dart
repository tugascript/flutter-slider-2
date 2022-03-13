import 'package:flutter/material.dart';

class SliderButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final double buttonSize;
  final bool breakPoint;
  final VoidCallback onPressed;

  const SliderButton({
    Key? key,
    required this.icon,
    required this.iconSize,
    required this.buttonSize,
    required this.breakPoint,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      margin: EdgeInsets.all(iconSize / 4),
      width: breakPoint ? buttonSize : iconSize * 2,
      height: breakPoint ? iconSize * 2 : buttonSize,
      child: TextButton(
        onPressed: onPressed,
        child: Center(
          child: Icon(
            icon,
            size: iconSize,
            color: colorScheme.primary.value == 0xFF02569B
                ? colorScheme.primary
                : colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
