import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/enums/theme_enum.dart';
import '../../redux/actions/theme_actions.dart';
import '../../redux/app_selectors.dart';
import '../../redux/app_state.dart';

class ThemeButton extends StatelessWidget {
  const ThemeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ThemeButtonViewModel>(
      distinct: true,
      converter: (store) => _ThemeButtonViewModel.fromStore(store),
      builder: (_, viewModel) => IconButton(
        onPressed: viewModel.changeTheme,
        icon: Icon(
          viewModel.theme == ThemeEnum.light
              ? Icons.dark_mode
              : Icons.light_mode,
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
