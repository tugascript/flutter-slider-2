import 'package:flutter/material.dart';

import '../../utilities/home_icons.dart';
import '../../utilities/sizes/home_screen_sizes.dart';

class SelectGame extends StatelessWidget {
  final int currentIndex;
  final Function(int) changeGame;

  const SelectGame({
    Key? key,
    required this.currentIndex,
    required this.changeGame,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = HomeScreenSizes.getHomeScreenSizes(width);
    final btnWidth = sizes.buttonWidth / 2 - sizes.marginBottom / 2;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _SelectButton(
          index: 0,
          currentIndex: currentIndex,
          width: btnWidth,
          height: sizes.buttonHeight,
          fontSize: sizes.fontSize,
          borderRadius: sizes.borderRadius,
          icon: HomeIcons.square,
          text: 'CLASSIC',
          onTap: () {
            changeGame(0);
          },
        ),
        SizedBox(
          width: sizes.marginBottom,
        ),
        _SelectButton(
          index: 1,
          currentIndex: currentIndex,
          width: btnWidth,
          height: sizes.buttonHeight,
          fontSize: sizes.fontSize,
          icon: HomeIcons.hexagon,
          borderRadius: sizes.borderRadius,
          text: 'HEXAGON',
          onTap: () {
            changeGame(1);
          },
        ),
      ],
    );
  }
}

class _SelectButton extends StatefulWidget {
  final int index;
  final int currentIndex;
  final double width;
  final double height;
  final double fontSize;
  final double borderRadius;
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const _SelectButton({
    Key? key,
    required this.index,
    required this.currentIndex,
    required this.width,
    required this.height,
    required this.fontSize,
    required this.borderRadius,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  State<_SelectButton> createState() => _SelectButtonState();
}

class _SelectButtonState extends State<_SelectButton> {
  bool _entered = false;

  @override
  Widget build(BuildContext context) {
    final secondary = Theme.of(context).primaryColorLight;
    final selected = widget.index == widget.currentIndex;
    final textColor = selected ? Colors.white : secondary;
    final bgColor = selected
        ? secondary
        : _entered
            ? secondary.withOpacity(0.1)
            : secondary.withOpacity(0);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          _entered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _entered = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            border: Border.all(
              color: secondary,
              width: 2.5,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                widget.borderRadius,
              ),
            ),
            color: bgColor,
          ),
          height: widget.height,
          width: widget.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.icon,
                size: widget.fontSize,
                color: textColor,
              ),
              SizedBox(
                width: widget.fontSize,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, widget.fontSize * 0.25, 0, 0),
                child: Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: widget.fontSize,
                    color: textColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
