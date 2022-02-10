import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:v1/redux/app_selectors.dart';
import 'package:v1/redux/app_state.dart';
import 'package:v1/utilities/theme_generator.dart';

import '../../../models/enums/theme_enum.dart';
import '../../../utilities/sizes/puzzle/timer_button_size.dart';
import '../../../utilities/sizes/puzzle/timer_font_size.dart';

class LostInfo extends StatelessWidget {
  const LostInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = TimerButtonSize.getTimerButtonSize(width);
    final fontSize = TimerFontSize.getTimerFontSize(width);

    return SizedBox(
      width: sizes.width,
      height: sizes.height,
      child: Center(
        child: StoreConnector<AppState, _TextViewModel>(
          distinct: true,
          converter: (store) => _TextViewModel.fromStore(store),
          builder: (_, viewModel) {
            return Text(
              'YOU LOST',
              style: TextStyle(
                color: viewModel.danger,
                fontSize: fontSize * 0.4,
                fontWeight: FontWeight.w800,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _TextViewModel {
  final ThemeEnum theme;
  final Color danger;

  _TextViewModel(this.theme, this.danger);

  factory _TextViewModel.fromStore(Store<AppState> store) {
    final theme = selectThemeState(store);

    return _TextViewModel(
      theme,
      ThemeGenerator(theme).getExtraColors().danger,
    );
  }

  @override
  int get hashCode => theme.index;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
