import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../../utilities/sizes/home_screen_sizes.dart';
import 'star_button.dart';
import '../../../models/enums/theme_enum.dart';
import '../../../models/extra_colors.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';
import '../../../utilities/theme_generator.dart';

class DifficultyInput extends StatefulWidget {
  final int difficultyIndex;
  final Function(int) changeDifficulty;

  const DifficultyInput({
    Key? key,
    required this.difficultyIndex,
    required this.changeDifficulty,
  }) : super(key: key);

  @override
  State<DifficultyInput> createState() => _DifficultyInputState();
}

class _DifficultyInputState extends State<DifficultyInput> {
  int _index = -1;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = HomeScreenSizes.getHomeScreenSizes(width);

    return SizedBox(
      width: sizes.buttonWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(
              sizes.marginBottom,
              sizes.marginBottom * 1.1,
              0,
              0,
            ),
            child: Text(
              'DIFFICULTY:',
              style: TextStyle(
                fontSize: sizes.fontSize,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          StoreConnector<AppState, _StarsViewModel>(
              distinct: true,
              converter: (store) => _StarsViewModel.fromStore(store),
              builder: (_, viewModel) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: _generateStars(
                    viewModel.colors,
                    sizes.inputSize,
                    sizes.inputMargin,
                  ),
                );
              })
        ],
      ),
    );
  }

  List<Widget> _generateStars(
    ExtraColors colors,
    double width,
    double margin,
  ) {
    Color color = colors.success;

    if (widget.difficultyIndex >= _index) {
      switch (widget.difficultyIndex) {
        case 2:
          color = colors.danger;
          break;
        case 1:
          color = colors.warning;
          break;
        case 0:
          color = colors.success;
          break;
      }
    } else {
      switch (_index) {
        case 2:
          color = colors.danger;
          break;
        case 1:
          color = colors.warning;
          break;
        case 0:
          color = colors.success;
          break;
      }
    }

    final stars = <StarButton>[];

    for (int i = 0; i < 3; i++) {
      stars.add(
        StarButton(
          index: i,
          currentIndex: _index,
          difficultyIndex: widget.difficultyIndex,
          width: width,
          margin: margin,
          color: color,
          onEnter: (_) {
            _changeIndex(i);
          },
          onLeave: (_) {
            _changeIndex(-1);
          },
          onTap: () {
            widget.changeDifficulty(i);
          },
        ),
      );
    }

    return stars;
  }

  void _changeIndex(int i) {
    setState(() {
      _index = i;
    });
  }
}

class _StarsViewModel {
  final ThemeEnum theme;
  final ExtraColors colors;

  _StarsViewModel(this.theme, this.colors);

  factory _StarsViewModel.fromStore(Store<AppState> store) {
    final theme = selectThemeState(store);
    return _StarsViewModel(
      theme,
      ThemeGenerator(theme).getExtraColors,
    );
  }

  @override
  int get hashCode => theme.index;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
