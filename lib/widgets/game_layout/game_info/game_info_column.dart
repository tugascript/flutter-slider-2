import 'package:flutter/material.dart';

import './game_info_moves.dart';
import './game_info_timer_button.dart';

class InfoColumn extends StatelessWidget {
  const InfoColumn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const GameMoves(),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: const TimerButton(),
        ),
      ],
    );
  }
}
