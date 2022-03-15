import 'package:flutter/material.dart';

class RankText extends StatelessWidget {
  final int rank;
  final double fontSize;

  const RankText({
    Key? key,
    required this.rank,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      rank.toString(),
      style: TextStyle(
        fontSize: fontSize * 2,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
