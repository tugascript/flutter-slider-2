import 'package:flutter/material.dart';

class LevelSelectField extends StatefulWidget {
  final int maxLevel;
  final bool loading;
  final double fontSize;
  final void Function(int) changeLevel;

  const LevelSelectField({
    Key? key,
    required this.maxLevel,
    required this.loading,
    required this.changeLevel,
    required this.fontSize,
  }) : super(key: key);

  @override
  State<LevelSelectField> createState() => _LevelSelectFieldState();
}

class _LevelSelectFieldState extends State<LevelSelectField> {
  int _level = 1;

  void _changeLevel(int? val) {
    if (val != null) {
      widget.changeLevel(val);
      setState(() {
        _level = val;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final _max = widget.maxLevel + (widget.maxLevel == 0 ? 2 : 1);

    return DropdownButton<int>(
      isExpanded: true,
      value: _level,
      iconSize: widget.fontSize * 1.5,
      items: widget.loading
          ? [
              DropdownMenuItem<int>(
                alignment: AlignmentDirectional.center,
                value: _level,
                child: Center(
                  child: Text(
                    'Loading...',
                    style: TextStyle(fontSize: widget.fontSize),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ]
          : [
              for (int i = 1; i < _max; i++)
                DropdownMenuItem<int>(
                  alignment: AlignmentDirectional.center,
                  value: i,
                  child: Center(
                    child: Text(
                      i.toString(),
                      style: TextStyle(fontSize: widget.fontSize),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
      onChanged: widget.loading ? (_) {} : _changeLevel,
    );
  }
}
