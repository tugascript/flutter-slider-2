import 'package:flutter/material.dart';

class SliderButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final bool disabled;
  final VoidCallback onPressed;

  const SliderButton({
    Key? key,
    required this.icon,
    required this.iconSize,
    required this.disabled,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: disabled ? () {} : onPressed,
      icon: Icon(
        disabled ? Icons.do_disturb : icon,
        size: iconSize,
      ),
    );
  }
}
