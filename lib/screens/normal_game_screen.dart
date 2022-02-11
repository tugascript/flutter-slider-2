import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../models/enums/difficulty_enum.dart';
import '../redux/actions/normal_game_actions.dart';
import '../redux/app_selectors.dart';
import '../redux/app_state.dart';
import '../utilities/sizes/break_points.dart';
import '../widgets/game_layout/game_timer.dart';
import '../widgets/layout/grid_container.dart';
import '../widgets/layout/responsive_scaffold.dart';
import '../widgets/normal_puzzle.dart/puzzle.dart';

class NormalGameScreen extends StatelessWidget {
  static const routeName = '/game';

  final bool newGame;
  final int level;
  final DifficultyEnum difficulty;

  const NormalGameScreen({
    Key? key,
    required this.newGame,
    required this.level,
    required this.difficulty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      title: 'Level $level',
      child: StoreConnector<AppState, _NormalGameScreenViewModel>(
          converter: (store) => _NormalGameScreenViewModel.fromStore(store),
          onInitialBuild: (viewModel) {
            if (newGame) viewModel.newGame(level, difficulty);
          },
          builder: (_, viewModel) {
            return GridContainer(inputs: [
              GridItemInput(
                breakPoints: BreakPoints(xl: 3, lg: 3, md: 4, sm: 12, xs: 12),
                child: const GameTimer(),
              ),
              GridItemInput(
                breakPoints: BreakPoints(xl: 6, lg: 6, md: 6, sm: 12, xs: 12),
                child: Puzzle(
                  level: viewModel.level,
                ),
              ),
              GridItemInput(
                breakPoints: BreakPoints(xl: 2, lg: 2, md: 1),
                child: IconButton(
                  icon: const Icon(Icons.ac_unit),
                  onPressed: viewModel.testPainting,
                ),
              ),
            ]);
          }),
    );
  }
}

class _NormalGameScreenViewModel {
  final int level;
  final DifficultyEnum difficulty;
  final Function(int level, DifficultyEnum difficulty) newGame;
  final VoidCallback testPainting;

  _NormalGameScreenViewModel({
    required this.level,
    required this.difficulty,
    required this.newGame,
    required this.testPainting,
  });

  factory _NormalGameScreenViewModel.fromStore(Store<AppState> store) {
    final gameState = selectGameState(store);

    return _NormalGameScreenViewModel(
      level: gameState.level,
      difficulty: gameState.difficulty.difficultyEnum,
      newGame: (int level, DifficultyEnum difficulty) {
        store.dispatch(NewGame(level, difficulty));
      },
      testPainting: () {
        store.dispatch(addPaintersToPieces('dark_theme_level_1'));
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
