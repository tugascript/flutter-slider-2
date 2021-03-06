import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../screens/game_screen.dart';
import '../../components/models/enums/difficulty_enum.dart';
import '../../components/sizes/layout/home_screen_sizes.dart';
import '../../utilities/arguments/game_screen_arguments.dart';

class StartGame extends StatelessWidget {
  final DifficultyEnum difficulty;

  const StartGame({
    Key? key,
    required this.difficulty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = HomeScreenSizes.getHomeScreenSizes(width);

    return SizedBox(
      width: sizes.buttonWidth,
      height: sizes.buttonHeight,
      child: ElevatedButton(
        onPressed: () => GoRouter.of(context).push(
          GameScreen.routeName,
          extra: GameScreenArguments(
            true,
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
