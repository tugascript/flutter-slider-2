import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redux/redux.dart';

import '../../models/enums/theme_enum.dart';
import '../../redux/actions/theme_actions.dart';
import '../../redux/app_selectors.dart';
import '../../redux/app_state.dart';
import '../../utilities/sizes/puzzle/app_bar_sizes.dart';

class ResponsiveScaffold extends StatelessWidget {
  final String title;
  final Widget child;

  const ResponsiveScaffold({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = AppBarSizes.getAppBarSizes(width);
    final color = Theme.of(context).colorScheme.onPrimary;

    return Scaffold(
      appBar: AppBar(
          toolbarHeight: sizes.height,
          title: StoreConnector<AppState, _AppBarViewModel>(
              distinct: true,
              converter: (store) => _AppBarViewModel.fromStore(store),
              builder: (_, viewModel) {
                final icon =
                    viewModel.theme == ThemeEnum.dark ? 'dark' : 'light';

                return Row(
                  children: [
                    SvgPicture.asset(
                      'images/icon-$icon.svg',
                      height: sizes.icon,
                      width: sizes.icon,
                    ),
                    SizedBox(
                      width: sizes.title,
                    ),
                    Text(
                      title,
                      style: GoogleFonts.josefinSans(
                        fontSize: sizes.title,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                );
              }),
          actions: [
            StoreConnector<AppState, _AppBarViewModel>(
              distinct: true,
              converter: (store) => _AppBarViewModel.fromStore(store),
              builder: (_, viewModel) => IconButton(
                onPressed: viewModel.changeTheme,
                icon: Icon(
                  viewModel.theme == ThemeEnum.light
                      ? Icons.dark_mode
                      : Icons.light_mode,
                ),
              ),
            ),
            SizedBox(
              width: sizes.title * 0.8,
            ),
          ]),
      body: Center(
        child: SingleChildScrollView(
          child: child,
        ),
      ),
    );
  }
}

class _AppBarViewModel {
  final ThemeEnum theme;
  final VoidCallback changeTheme;

  _AppBarViewModel({
    required this.theme,
    required this.changeTheme,
  });

  factory _AppBarViewModel.fromStore(Store<AppState> store) {
    final theme = selectThemeState(store);

    return _AppBarViewModel(
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
