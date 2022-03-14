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
    return DropdownButton<int>(
      value: _level,
      iconSize: widget.fontSize * 1.5,
      items: widget.loading
          ? [
              DropdownMenuItem<int>(
                value: _level,
                child: Text(
                  'Loading...',
                  style: TextStyle(fontSize: widget.fontSize),
                ),
              ),
            ]
          : [
              for (int i = 1; i < widget.maxLevel + 2; i++)
                DropdownMenuItem<int>(
                  value: i,
                  child: Text(
                    i.toString(),
                    style: TextStyle(fontSize: widget.fontSize),
                  ),
                ),
            ],
      onChanged: widget.loading ? (_) {} : _changeLevel,
    );
  }
}
