import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class StarButton extends StatelessWidget {
  final int index;
  final int currentIndex;
  final int difficultyIndex;
  final double width;
  final double margin;
  final Color color;
  final Function(PointerEnterEvent) onEnter;
  final Function(PointerExitEvent) onLeave;
  final VoidCallback onTap;

  const StarButton({
    Key? key,
    required this.index,
    required this.currentIndex,
    required this.difficultyIndex,
    required this.width,
    required this.margin,
    required this.color,
    required this.onEnter,
    required this.onLeave,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final icon = index <= currentIndex || index <= difficultyIndex
        ? Icons.star_rounded
        : Icons.star_outline_rounded;
    final iconColor = index <= currentIndex ? color.withOpacity(0.75) : color;
    final size = width - margin;

    return MouseRegion(
      onEnter: onEnter,
      onExit: onLeave,
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: margin,
          ),
          child: Icon(
            icon,
            size: size,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
