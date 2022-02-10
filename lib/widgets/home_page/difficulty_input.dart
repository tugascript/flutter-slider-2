import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DifficultyInput extends StatefulWidget {
  final int difficultyIndex;
  final Function(int) changeDifficulty;

  const DifficultyInput({
    Key? key,
    required this.difficultyIndex,
    required this.changeDifficulty,
  }) : super(key: key);

  @override
  State<DifficultyInput> createState() => _DifficultyInputState();
}

class _DifficultyInputState extends State<DifficultyInput> {
  int _index = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (int i = 0; i < 3; i++)
          _StarButton(
            index: i,
            currentIndex: _index,
            difficultyIndex: widget.difficultyIndex,
            width: 50,
            margin: 5,
            warning: Colors.yellow.shade700,
            onEnter: (_) {
              _changeIndex(i);
            },
            onLeave: (_) {
              _changeIndex(-1);
            },
            onTap: () {
              widget.changeDifficulty(i);
            },
          )
      ],
    );
  }

  void _changeIndex(int i) {
    setState(() {
      _index = i;
    });
  }
}

class _StarButton extends StatelessWidget {
  final int index;
  final int currentIndex;
  final int difficultyIndex;
  final double width;
  final double margin;
  final Color warning;
  final Function(PointerEnterEvent) onEnter;
  final Function(PointerExitEvent) onLeave;
  final VoidCallback onTap;

  const _StarButton({
    Key? key,
    required this.index,
    required this.currentIndex,
    required this.difficultyIndex,
    required this.width,
    required this.margin,
    required this.warning,
    required this.onEnter,
    required this.onLeave,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = width - margin;

    return MouseRegion(
      onEnter: onEnter,
      onExit: onLeave,
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(margin),
          child: index <= currentIndex
              ? Icon(
                  Icons.star_rounded,
                  size: size,
                  color: warning.withOpacity(0.7),
                )
              : index <= difficultyIndex
                  ? Icon(
                      Icons.star_rounded,
                      size: size,
                      color: warning,
                    )
                  : Icon(
                      Icons.star_border_rounded,
                      size: size,
                      color: warning,
                    ),
        ),
      ),
    );
  }
}
