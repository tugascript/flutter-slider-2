import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redux/redux.dart';

import '../../models/enums/theme_enum.dart';
import '../../models/extra_colors.dart';
import '../../redux/app_selectors.dart';
import '../../redux/app_state.dart';
import '../../utilities/helpers/time_stringify.dart';
import '../../utilities/sizes/timer_sizes.dart';
import '../../utilities/theme_generator.dart';
import 'game_info/game_info.dart';

class GameTimer extends StatelessWidget {
  const GameTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = TimerSizes.getTimerSizes(width);

    return StoreConnector<AppState, _GameTimerViewModel>(
      distinct: true,
      converter: (store) => _GameTimerViewModel.fromStore(store),
      builder: (_, viewModel) {
        final progress = 1 - (1 - (viewModel.time / viewModel.maxTime));
        final isHalf = progress >= 0.5;
        final tween = isHalf
            ? ColorTween(
                begin: viewModel.colors.warning,
                end: viewModel.colors.success,
              )
            : ColorTween(
                begin: viewModel.colors.danger,
                end: viewModel.colors.warning,
              );
        final color = tween.lerp(
          isHalf
              ? _normalizeProgress(progress, 0.5, 1)
              : _normalizeProgress(progress, 0, 0.5),
        )!;

        final timer = TimeStringify.getTimeString(viewModel.time);

        return Padding(
          padding: EdgeInsets.all(sizes.spacing),
          child: SizedBox(
            width: sizes.size,
            height: sizes.size,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: progress,
                  valueColor: AlwaysStoppedAnimation<Color>(color),
                  strokeWidth: sizes.strokeWidth,
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      timer,
                      style: GoogleFonts.roboto(
                        fontSize: sizes.fontSize,
                        fontWeight: FontWeight.w700,
                        color: color,
                      ),
                    ),
                    const GameInfo(),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  double _normalizeProgress(double progress, double min, double max) {
    return (progress - min) / (max - min);
  }
}

class _GameTimerViewModel {
  final int time;
  final int maxTime;
  final ThemeEnum theme;
  final ExtraColors colors;

  _GameTimerViewModel({
    required this.time,
    required this.maxTime,
    required this.theme,
    required this.colors,
  });

  factory _GameTimerViewModel.fromStore(Store<AppState> store) {
    final gameState = selectGameState(store);
    final theme = selectThemeState(store);
    return _GameTimerViewModel(
      time: gameState.time,
      maxTime: gameState.difficulty.getTime(gameState.level),
      theme: theme,
      colors: ThemeGenerator(theme).getExtraColors,
    );
  }

  @override
  int get hashCode => time + theme.index;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
