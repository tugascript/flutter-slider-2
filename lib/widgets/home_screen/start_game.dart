import 'package:flutter/material.dart';

import '../../models/enums/difficulty_enum.dart';
import '../../models/enums/game_type_enum.dart';
import '../../screens/game_screen.dart';
import '../../utilities/arguments/game_screen_arguments.dart';
import '../../utilities/sizes/home_screen_sizes.dart';

class StartGame extends StatelessWidget {
  final DifficultyEnum difficulty;
  final GameTypeEnum gameType;

  const StartGame({
    Key? key,
    required this.difficulty,
    required this.gameType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = HomeScreenSizes.getHomeScreenSizes(width);

    return SizedBox(
      width: sizes.buttonWidth,
      height: sizes.buttonHeight,
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(
          context,
          GameScreen.routeName,
          arguments: GameScreenArguments(
            true,
            gameType,
            1,
            difficulty,
          ),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                sizes.borderRadius,
              ),
            ),
          ),
        ),
        child: Container(
          margin: EdgeInsets.fromLTRB(
            0,
            sizes.fontSize * 0.25,
            0,
            0,
          ),
          child: Text(
            'START',
            style: TextStyle(
              fontSize: sizes.fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
