import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:v1/models/enums/game_type_enum.dart';
import 'package:v1/widgets/normal_puzzle.dart/triangle.dart';

import '../models/enums/difficulty_enum.dart';
import '../redux/actions/normal_game_actions.dart';
import '../redux/app_selectors.dart';
import '../redux/app_state.dart';
import '../utilities/sizes/break_point.dart';
import '../utilities/sizes/screen_sizes.dart';
import '../widgets/game_layout/game_images/image_slider.dart';
import '../widgets/game_layout/game_timer.dart';
import '../widgets/layout/grid/grid_container.dart';
import '../widgets/layout/responsive_scaffold.dart';
import '../widgets/normal_puzzle.dart/puzzle.dart';

class GameScreen extends StatelessWidget {
  static const routeName = '/game';

  final bool newGame;
  final GameTypeEnum gameType;
  final int level;
  final DifficultyEnum difficulty;

  const GameScreen({
    Key? key,
    required this.newGame,
    required this.gameType,
    required this.level,
    required this.difficulty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final breakPoints = BreakPoint(width);

    return ResponsiveScaffold(
      title: 'Level $level',
      child: StoreConnector<AppState, _GameScreenViewModel>(
          converter: (store) => _GameScreenViewModel.fromStore(store),
          onInitialBuild: (viewModel) {
            if (newGame) viewModel.newGame(gameType, level, difficulty);
          },
          builder: (_, viewModel) {
            return GridContainer(items: [
              GridItemInput(
                breakPoints: {
                  ScreenSizesEnum.xl: 3,
                  ScreenSizesEnum.lg: 3,
                },
                alignment: Alignment.center,
                child: const GameTimer(),
              ),
              GridItemInput(
                breakPoints: {
                  ScreenSizesEnum.xl: 5,
                  ScreenSizesEnum.lg: 6,
                },
                alignment: Alignment.center,
                child: viewModel.gameType == GameTypeEnum.classic
                    ? Puzzle(level: viewModel.level)
                    : const Triangle(),
              ),
              GridItemInput(
                breakPoints: {
                  ScreenSizesEnum.xl: 3,
                  ScreenSizesEnum.lg: 3,
                },
                alignment: Alignment.center,
                child: ImageSlider(
                  scrollDirection:
                      breakPoints.greatLG ? Axis.vertical : Axis.horizontal,
                ),
              ),
            ]);
          }),
    );
  }
}

class _GameScreenViewModel {
  final GameTypeEnum gameType;
  final int level;
  final DifficultyEnum difficulty;
  final void Function(
    GameTypeEnum gameType,
    int level,
    DifficultyEnum difficulty,
  ) newGame;

  const _GameScreenViewModel({
    required this.gameType,
    required this.level,
    required this.difficulty,
    required this.newGame,
  });

  factory _GameScreenViewModel.fromStore(Store<AppState> store) {
    final gameState = selectGameState(store);

    return _GameScreenViewModel(
      gameType: gameState.gameType,
      level: gameState.level,
      difficulty: gameState.difficulty.difficultyEnum,
      newGame: (GameTypeEnum gameType, int level, DifficultyEnum difficulty) {
        store.dispatch(
          NewGame(gameType, level, difficulty),
        );
      },
    );
  }

  @override
  int get hashCode => level + difficulty.index + gameType.index;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
