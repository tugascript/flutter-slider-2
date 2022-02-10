import 'package:flutter/material.dart';
import 'package:v1/models/game_record.dart';

class GameRecordWidget extends StatelessWidget {
  final int level;
  final GameRecord record;

  const GameRecordWidget({
    Key? key,
    required this.level,
    required this.record,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
