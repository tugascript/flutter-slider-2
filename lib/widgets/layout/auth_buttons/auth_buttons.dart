import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';
import '../../auth/login_modal_form.dart';
import '../../auth/register_modal_form.dart';
import 'login_button.dart';
import 'register_button.dart';
import 'user_button.dart';

class AuthButtons extends StatelessWidget {
  const AuthButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _AuthButtonsViewModel>(
      distinct: true,
      converter: (store) => _AuthButtonsViewModel.fromStore(store),
      builder: (_, viewModel) {
        if (viewModel.authenticated) {
          return const UserButton();
        }

        return SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              LoginButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => LoginModalForm(ctx: context),
                ),
              ),
              RegisterButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => RegisterModalForm(ctx: context),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _AuthButtonsViewModel {
  final bool authenticated;

  _AuthButtonsViewModel(this.authenticated);

  factory _AuthButtonsViewModel.fromStore(Store<AppState> store) {
    return _AuthButtonsViewModel(selectAuthState(store).authenticated);
  }

  @override
  int get hashCode => authenticated ? 1 : 0;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
