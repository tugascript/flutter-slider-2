import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

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
import '../widgets/puzzle/puzzle.dart';

class GameScreen extends StatelessWidget {
  static const routeName = '/game';

  final bool newGame;
  final int level;
  final DifficultyEnum difficulty;

  const GameScreen({
    Key? key,
    required this.newGame,
    required this.level,
    required this.difficulty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      title: 'Level $level',
      child: StoreConnector<AppState, _GameScreenViewModel>(
          converter: (store) => _GameScreenViewModel.fromStore(store),
          onInitialBuild: (viewModel) {
            if (newGame) viewModel.newGame(level, difficulty);
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
              GridItemInput(breakPoints: {
                ScreenSizesEnum.xl: 5,
                ScreenSizesEnum.lg: 6,
              }, alignment: Alignment.center, child: const Puzzle()),
              GridItemInput(
                breakPoints: {
                  ScreenSizesEnum.xl: 3,
                  ScreenSizesEnum.lg: 3,
                },
                alignment: Alignment.center,
                child: const ImageSlider(),
              ),
            ]);
          }),
    );
  }
}

class _GameScreenViewModel {
  final int level;
  final DifficultyEnum difficulty;
  final void Function(
    int level,
    DifficultyEnum difficulty,
  ) newGame;

  const _GameScreenViewModel({
    required this.level,
    required this.difficulty,
    required this.newGame,
  });

  factory _GameScreenViewModel.fromStore(Store<AppState> store) {
    final gameState = selectGameState(store);

    return _GameScreenViewModel(
      level: gameState.level,
      difficulty: gameState.difficulty.difficultyEnum,
      newGame: (int level, DifficultyEnum difficulty) {
        store.dispatch(
          NewGame(level, difficulty),
        );
      },
    );
  }

  @override
  int get hashCode => level + difficulty.index;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
