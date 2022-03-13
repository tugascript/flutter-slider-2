import 'package:flutter/material.dart';

class DoneEditorButton extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final double iconSize;
  final bool isLightTheme;
  final ColorScheme colorScheme;
  final VoidCallback onPressed;

  const DoneEditorButton({
    Key? key,
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.iconSize,
    required this.isLightTheme,
    required this.colorScheme,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                borderRadius,
              ),
            ),
          ),
          primary: isLightTheme ? null : colorScheme.onPrimary,
          onPrimary: isLightTheme ? null : colorScheme.primary,
        ),
        child: Icon(
          Icons.done_rounded,
          size: iconSize,
        ),
      ),
    );
  }
}
