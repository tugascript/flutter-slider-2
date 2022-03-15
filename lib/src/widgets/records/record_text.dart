import 'package:flutter/material.dart';

class RecordText extends StatelessWidget {
  final String param;
  final String value;
  final double fontSize;
  final bool breakPoint;

  const RecordText({
    Key? key,
    required this.param,
    required this.value,
    required this.fontSize,
    required this.breakPoint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          breakPoint ? MainAxisAlignment.start : MainAxisAlignment.center,
      children: [
        Text(
          '$param: ',
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: fontSize,
          ),
        ),
      ],
    );
  }
}
