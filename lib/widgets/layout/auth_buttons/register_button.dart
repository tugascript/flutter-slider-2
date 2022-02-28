import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../../models/auth/forms/register_form.dart';
import '../../../redux/actions/auth_actions.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';

class RegisterButton extends StatelessWidget {
  final double padding;
  final double width;
  final double borderRadius;
  final double fontSize;
  final double borderWidth;

  const RegisterButton({
    Key? key,
    required this.padding,
    required this.width,
    required this.borderRadius,
    required this.fontSize,
    required this.borderWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isLightTheme = colorScheme.primary.value == 0xFF02569B;
    final halfPadding = padding / 2;

    return StoreConnector<AppState, _RegisterButtonViewModel>(
      converter: (store) => _RegisterButtonViewModel.fromStore(store),
      builder: (_, viewModel) {
        if (viewModel.loading) {
          return Container(
            width: width,
            padding: EdgeInsets.symmetric(
              vertical: padding,
              horizontal: halfPadding,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(borderRadius),
              ),
              color: Colors.grey,
            ),
          );
        }

        return Padding(
          padding: EdgeInsets.symmetric(
            vertical: padding,
            horizontal: halfPadding,
          ),
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(borderRadius),
                ),
              ),
              side: BorderSide(
                color:
                    isLightTheme ? colorScheme.primary : colorScheme.onPrimary,
                width: borderWidth,
              ),
            ),
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontSize: fontSize,
                color:
                    isLightTheme ? colorScheme.primary : colorScheme.onPrimary,
              ),
            ),
          ),
        );
      },
    );
  }
}

class _RegisterButtonViewModel {
  final bool loading;
  final String? email;
  final void Function(RegisterForm form) registerFunc;
  final VoidCallback registerCancel;

  _RegisterButtonViewModel({
    required this.loading,
    required this.email,
    required this.registerFunc,
    required this.registerCancel,
  });

  factory _RegisterButtonViewModel.fromStore(Store<AppState> store) {
    final authState = selectAuthState(store);
    return _RegisterButtonViewModel(
      loading: authState.loading,
      email: authState.email,
      registerFunc: (form) {
        store.dispatch(
          registerUser(form),
        );
      },
      registerCancel: () {
        store.dispatch(RemoveAuthEmail());
      },
    );
  }
}
