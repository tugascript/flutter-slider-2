import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../../models/enums/game_status_enum.dart';
import '../../../models/enums/theme_enum.dart';
import '../../../redux/actions/normal_game_actions.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';
import '../../../utilities/sizes/puzzle/timer_button_size.dart';
import '../../../utilities/sizes/timer_sizes.dart';
import '../../../utilities/theme_generator.dart';

class GameInfoButton extends StatelessWidget {
  const GameInfoButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = TimerButtonSize.getTimerButtonSize(width);
    final fontSize = TimerSizes.getTimerSizes(width).fontSize;

    return SizedBox(
      width: sizes.width,
      height: sizes.height,
      child: StoreConnector<AppState, _GameInfoButtonScreenView>(
        distinct: true,
        converter: (store) => _GameInfoButtonScreenView.fromStore(store),
        builder: (_, viewModel) => OutlinedButton(
          onPressed: () {
            if (viewModel.status == GameStatusEnum.starting) {
              viewModel.startGame();
            } else if (viewModel.status == GameStatusEnum.completed) {
              viewModel.goToNextLevel();
            }
          },
          child: Text(
            viewModel.status == GameStatusEnum.starting
                ? "LET'S START"
                : 'NEXT LEVEL',
            style: TextStyle(
              fontSize: fontSize * 0.35,
              color: viewModel.success,
            ),
          ),
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              width: 2.5,
              color: viewModel.success,
            ),
          ),
        ),
      ),
    );
  }
}

class _GameInfoButtonScreenView {
  final GameStatusEnum status;
  final VoidCallback startGame;
  final ThemeEnum theme;
  final Color success;
  final VoidCallback goToNextLevel;

  _GameInfoButtonScreenView({
    required this.status,
    required this.theme,
    required this.success,
    required this.startGame,
    required this.goToNextLevel,
  });

  factory _GameInfoButtonScreenView.fromStore(Store<AppState> store) {
    final game = selectNormalGameState(store);
    final theme = selectThemeState(store);

    return _GameInfoButtonScreenView(
      status: game.status,
      theme: theme,
      success: ThemeGenerator(theme).getExtraColors.success,
      startGame: () {
        store.dispatch(ShufflePuzzle());
        store.dispatch(TimerActions.startTimer());
      },
      goToNextLevel: () {
        store.dispatch(NextLevel());
      },
    );
  }

  @override
  int get hashCode => status.index + theme.index;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
