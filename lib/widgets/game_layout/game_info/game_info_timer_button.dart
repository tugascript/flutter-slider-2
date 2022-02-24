import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redux/redux.dart';

import '../../../models/enums/game_status_enum.dart';
import '../../../models/enums/theme_enum.dart';
import '../../../models/extra_colors.dart';
import '../../../redux/actions/normal_game_actions.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';
import '../../../utilities/sizes/puzzle/game_info_button_size.dart';
import '../../../utilities/sizes/timer_sizes.dart';
import '../../../utilities/theme_generator.dart';

class TimerButton extends StatelessWidget {
  const TimerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = GameInfoButtonSize.getGameInfoButtonSize(width);
    final fontSize = TimerSizes.getTimerSizes(width).fontSize * 0.3;

    return StoreConnector<AppState, _TimerButtonViewModel>(
      distinct: true,
      converter: (store) => _TimerButtonViewModel.fromStore(store),
      builder: (_, viewModel) {
        final resumeButton = _Button(
          onPressed: viewModel.resumeTimer,
          color: viewModel.colors.success,
          sizes: sizes,
          fontSize: fontSize,
          icon: Icons.not_started_outlined,
          text: ' RESUME',
        );
        final pauseButton = _Button(
          onPressed: viewModel.stopTimer,
          color: viewModel.colors.warning,
          sizes: sizes,
          fontSize: fontSize,
          icon: Icons.stop_circle_outlined,
          text: ' STOP',
        );

        return AnimatedCrossFade(
          firstChild: resumeButton,
          secondChild: pauseButton,
          crossFadeState: viewModel.isPaused
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 250),
        );
      },
    );
  }
}

class _Button extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final ButtonSizes sizes;
  final double fontSize;
  final IconData icon;
  final String text;

  const _Button({
    Key? key,
    required this.onPressed,
    required this.color,
    required this.sizes,
    required this.fontSize,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizes.height,
      width: sizes.width,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          splashFactory: NoSplash.splashFactory,
          primary: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: fontSize,
            ),
            Text(
              text,
              style: GoogleFonts.roboto(
                fontSize: fontSize,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _TimerButtonViewModel {
  final bool isPaused;
  final ThemeEnum theme;
  final ExtraColors colors;
  final VoidCallback stopTimer;
  final VoidCallback resumeTimer;

  _TimerButtonViewModel({
    required this.isPaused,
    required this.theme,
    required this.colors,
    required this.stopTimer,
    required this.resumeTimer,
  });

  factory _TimerButtonViewModel.fromStore(Store<AppState> store) {
    final isPaused =
        selectNormalGameState(store).status == GameStatusEnum.paused;
    final theme = selectThemeState(store);
    return _TimerButtonViewModel(
      isPaused: isPaused,
      theme: theme,
      colors: ThemeGenerator(theme).getExtraColors,
      stopTimer: () {
        store.dispatch(TimerActions.stopTimer());
      },
      resumeTimer: () {
        store.dispatch(const UpdateGameStatus(GameStatusEnum.ongoing));
        store.dispatch(TimerActions.startTimer());
      },
    );
  }

  @override
  int get hashCode => theme.index + (isPaused ? 1 : 0);

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
