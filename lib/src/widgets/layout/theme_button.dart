import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:v1/src/components/sizes/layout/theme_button_sizes.dart';

import '../../components/models/enums/theme_enum.dart';
import '../../redux/actions/theme_actions.dart';
import '../../redux/app_selectors.dart';
import '../../redux/app_state.dart';

class ThemeButton extends StatelessWidget {
  const ThemeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = ThemeButtonSizes.getThemeButtonSizes(width);

    return StoreConnector<AppState, _ThemeButtonViewModel>(
      distinct: true,
      converter: (store) => _ThemeButtonViewModel.fromStore(store),
      builder: (_, viewModel) => Padding(
        padding: EdgeInsets.fromLTRB(
          sizes.spacing,
          sizes.spacing / 2,
          sizes.spacing * 2,
          sizes.spacing / 2,
        ),
        child: SizedBox(
          height: sizes.size,
          width: sizes.size,
          child: IconButton(
            onPressed: viewModel.changeTheme,
            icon: Icon(
              viewModel.theme == ThemeEnum.light
                  ? Icons.dark_mode
                  : Icons.light_mode,
              size: sizes.icon,
            ),
          ),
        ),
      ),
    );
  }
}

class _ThemeButtonViewModel {
  final ThemeEnum theme;
  final VoidCallback changeTheme;

  _ThemeButtonViewModel({
    required this.theme,
    required this.changeTheme,
  });

  factory _ThemeButtonViewModel.fromStore(Store<AppState> store) {
    final theme = selectThemeState(store);

    return _ThemeButtonViewModel(
      theme: theme,
      changeTheme: () {
        final input = theme == ThemeEnum.dark
            ? ChangeTheme(ThemeEnum.light)
            : ChangeTheme(ThemeEnum.dark);

        store.dispatch(input);
      },
    );
  }

  @override
  int get hashCode => theme.index;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
