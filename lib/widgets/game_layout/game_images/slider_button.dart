import 'package:flutter/material.dart';

class SliderButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final double buttonSize;
  final VoidCallback onPressed;

  const SliderButton({
    Key? key,
    required this.icon,
    required this.iconSize,
    required this.buttonSize,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: buttonSize,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Icon(
          icon,
          size: iconSize,
        ),
      ),
    );
  }
}
