import 'package:flutter/material.dart';
import 'package:v1/src/widgets/home_screen/high_scores_button.dart';
import 'package:v1/src/widgets/layout/drawer/auth_list_view.dart';

import '../src/components/models/enums/difficulty_enum.dart';
import '../src/components/sizes/break_point.dart';
import '../src/components/sizes/layout/app_bar_sizes.dart';
import '../src/components/sizes/layout/home_screen_sizes.dart';
import '../src/widgets/home_screen/animated_icon.dart';
import '../src/widgets/home_screen/difficulty_input/difficulty_input.dart';
import '../src/widgets/home_screen/start_game.dart';
import '../src/widgets/layout/auth_buttons/auth_buttons.dart';
import '../src/widgets/layout/normal_icon.dart';
import '../src/widgets/layout/notifications.dart';
import '../src/widgets/layout/theme_button.dart';

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
    final appbarSizes = AppBarSizes.getAppBarSizes(width);
    final sizes = HomeScreenSizes.getHomeScreenSizes(width);
    final breakPoint = BreakPoint(width);
    final theme = Theme.of(context);
    final isLightTheme = theme.colorScheme.primary.value == 0xFF02569B;

    final widgets = <Widget>[
      LocalAnimatedIcon(size: sizes.buttonWidth),
      DifficultyInput(
        difficultyIndex: _difficultyIndex,
        changeDifficulty: _changeDifficulty,
      ),
      StartGame(
        difficulty: _kDifficulties[_difficultyIndex],
      ),
      const HighScoresButton(),
    ];

    Widget _buildHomeScreen() {
      final children = <Widget>[];
      final initial = breakPoint.greatLG ? 1 : 0;

      for (int i = initial; i < 4; i++) {
        children.addAll([
          widgets[i],
          SizedBox(
            height: sizes.marginBottom,
          ),
        ]);
      }

      children.add(const ShowNotifications());

      final column = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children,
      );

      return breakPoint.greatLG
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                widgets[0],
                SizedBox(
                  width: sizes.marginBottom * 3,
                ),
                column,
              ],
            )
          : column;
    }

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: appbarSizes.height,
        title: Row(
          children: [
            NormalIcon(size: appbarSizes.icon),
            SizedBox(
              width: appbarSizes.title,
            ),
            Text(
              'Flutter ',
              style: TextStyle(
                fontSize: appbarSizes.title,
                fontWeight: FontWeight.w600,
                color: isLightTheme
                    ? theme.colorScheme.primary
                    : theme.colorScheme.onPrimary,
              ),
            ),
            Text(
              'Slidder',
              style: TextStyle(
                fontSize: appbarSizes.title,
                fontWeight: FontWeight.w600,
                color: isLightTheme
                    ? theme.primaryColorLight
                    : theme.colorScheme.onPrimary,
              ),
            ),
          ],
        ),
        actions: const [
          AuthButtons(),
          ThemeButton(),
        ],
      ),
      endDrawer: Drawer(
        child: AuthListView(),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: _buildHomeScreen(),
        ),
      ),
    );
  }
}

const _kDifficulties = <DifficultyEnum>[
  DifficultyEnum.easy,
  DifficultyEnum.medium,
  DifficultyEnum.hard,
];
