import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../../models/enums/theme_enum.dart';
import '../../../models/extra_colors.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';
import '../../../utilities/sizes/puzzle/timer_font_size.dart';
import '../../../utilities/theme_generator.dart';

class GameMoves extends StatelessWidget {
  const GameMoves({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).textTheme.bodyText1!.color!;
    final width = MediaQuery.of(context).size.width;
    final fontSize = TimerFontSize.getTimerFontSize(width) * 0.45;

    return StoreConnector<AppState, _GameMovesViewModel>(
      distinct: true,
      converter: (store) => _GameMovesViewModel.fromStore(store),
      builder: (_, viewModel) {
        return Text(
          'Moves: ${viewModel.moves}',
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
            color: _getCorrectMovesColor(
              viewModel.moves,
              viewModel.shuffles,
              viewModel.colors,
              color,
            ),
          ),
        );
      },
    );
  }

  Color _getCorrectMovesColor(
    int moves,
    int shuffles,
    ExtraColors colors,
    Color normalColor,
  ) {
    if (moves >= shuffles * 5) {
      return colors.danger;
    } else if (moves >= shuffles * 3) {
      return colors.warning;
    } else if (moves >= shuffles * 2) {
      return normalColor;
    } else {
      return colors.success;
    }
  }
}

class _GameMovesViewModel {
  final int moves;
  final int shuffles;
  final ThemeEnum theme;
  final ExtraColors colors;

  _GameMovesViewModel({
    required this.moves,
    required this.shuffles,
    required this.theme,
    required this.colors,
  });

  factory _GameMovesViewModel.fromStore(Store<AppState> store) {
    final gameState = selectGameState(store);
    final theme = selectThemeState(store);
    final len = gameState.level + 2;

    return _GameMovesViewModel(
      moves: gameState.moves,
      shuffles: len * len,
      theme: theme,
      colors: ThemeGenerator(theme).getExtraColors,
    );
  }

  @override
  int get hashCode => moves + theme.index;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
