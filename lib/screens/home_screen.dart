import 'package:flutter/material.dart';
import 'package:v1/models/enums/difficulty_enum.dart';
import 'package:v1/screens/normal_game_screen.dart';
import 'package:v1/widgets/home_page/difficulty_input.dart';
import 'package:v1/widgets/layout/responsive_scaffold.dart';

const _kDifficulties = <DifficultyEnum>[
  DifficultyEnum.easy,
  DifficultyEnum.medium,
  DifficultyEnum.hard,
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _difficultyIndex = 0;

  void _changeDifficulty(int i) {
    setState(() {
      _difficultyIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return ResponsiveScaffold(
      title: 'Flutter Slider',
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: width * 0.75,
            child: ElevatedButton(
              child: const Text('Story Mode'),
              onPressed: () => Navigator.pushNamed(
                context,
                NormalGameScreen.routeName,
                arguments: 1,
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          DifficultyInput(
            difficultyIndex: _difficultyIndex,
            changeDifficulty: _changeDifficulty,
          ),
        ],
      ),
    );
  }
}
