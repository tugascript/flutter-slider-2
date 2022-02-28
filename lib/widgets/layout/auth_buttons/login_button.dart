import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';
import '../../../utilities/sizes/nav_btn_sizes.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onPressed;

  const LoginButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isLightTheme = colorScheme.primary.value == 0xFF02569B;
    final width = MediaQuery.of(context).size.width;
    final sizes = NavBtnSizes.getNavBtnSizes(width);
    final halfPadding = sizes.padding / 2;

    return StoreConnector<AppState, _LoginButtonViewModel>(
      distinct: true,
      converter: (store) => _LoginButtonViewModel.fromStore(store),
      builder: (_, viewModel) {
        return Padding(
          padding: EdgeInsets.symmetric(
            vertical: sizes.padding,
            horizontal: halfPadding,
          ),
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    sizes.borderRadius,
                  ),
                ),
              ),
              primary: isLightTheme ? null : colorScheme.onPrimary,
              onPrimary: isLightTheme ? null : colorScheme.primary,
            ),
            child: Text(
              'Sign In',
              style: TextStyle(
                fontSize: sizes.fontSize,
              ),
            ),
          ),
        );
      },
    );
  }
}

class _LoginButtonViewModel {
  final bool loading;

  _LoginButtonViewModel(this.loading);

  factory _LoginButtonViewModel.fromStore(Store<AppState> store) {
    final authState = selectAuthState(store);
    return _LoginButtonViewModel(authState.loading);
  }

  @override
  int get hashCode => loading ? 1 : 0;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
