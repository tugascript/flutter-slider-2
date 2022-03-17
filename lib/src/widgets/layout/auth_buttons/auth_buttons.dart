import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:v1/src/widgets/layout/auth_buttons/loading_button.dart';

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
        late final Widget _child;

        if (viewModel.authenticated) {
          _child = const UserButton();
        } else if (viewModel.loading) {
          _child = const LoadingButton();
        } else {
          _child = Row(
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
          );
        }

        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          child: _child,
        );
      },
    );
  }
}

class _AuthButtonsViewModel {
  final bool authenticated;
  final bool loading;

  _AuthButtonsViewModel({
    required this.authenticated,
    required this.loading,
  });

  factory _AuthButtonsViewModel.fromStore(Store<AppState> store) {
    final authState = selectAuthState(store);
    return _AuthButtonsViewModel(
      authenticated: authState.authenticated,
      loading: authState.loading,
    );
  }

  @override
  int get hashCode => (authenticated ? 2 : 0) + (loading ? 1 : 0);

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
