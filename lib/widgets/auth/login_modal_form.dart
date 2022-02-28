import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/auth/forms/confirm_login_form.dart';
import '../../models/auth/forms/login_form.dart';
import '../../redux/actions/auth_actions.dart';
import '../../redux/app_selectors.dart';
import '../../redux/app_state.dart';
import '../../utilities/regexps.dart';
import '../../utilities/sizes/nav_form_sizes.dart';

class LoginModalForm extends StatefulWidget {
  final BuildContext ctx;
  const LoginModalForm({
    Key? key,
    required this.ctx,
  }) : super(key: key);

  @override
  State<LoginModalForm> createState() => _LoginModalFormState();
}

class _LoginModalFormState extends State<LoginModalForm> {
  static const route = '/login-modal';
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  dynamic _formData = LoginForm();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(widget.ctx).size.width;
    final sizes = NavFormSizes.getNavFormSizes(width);

    return StoreConnector<AppState, _LoginModalViewModel>(
        distinct: true,
        converter: (store) => _LoginModalViewModel.fromStore(store),
        onWillChange: (_, viewModel) {
          if (viewModel.email != null) {
            setState(() {
              _formData = ConfirmLoginForm(viewModel.email!);
              _formKey = GlobalKey<FormState>();
            });
          }

          if (viewModel.authenticated) {
            Navigator.pop(context, route);
          }
        },
        builder: (_, viewModel) {
          final nullEmail = viewModel.email == null;
          final inputDecoration = nullEmail
              ? const InputDecoration(
                  hintText: 'Your@Email.com',
                  labelText: 'Email',
                )
              : const InputDecoration(
                  hintText: 'XXXXXX',
                  labelText: 'Access Code',
                  helperText: 'An access code has been sent to your email.',
                );

          return Form(
            key: _formKey,
            child: AlertDialog(
              title: Text(
                nullEmail ? 'Sign In' : 'Confirm Sign in',
                style: TextStyle(
                  fontSize: sizes.fontSize * 1.2,
                ),
              ),
              content: SizedBox(
                width: sizes.width,
                child: TextFormField(
                  style: TextStyle(
                    fontSize: sizes.fontSize,
                  ),
                  decoration: inputDecoration,
                  validator: (String? val) {
                    if (_formData is LoginForm) {
                      if (val == null || val.isEmpty) {
                        return 'Email is required.';
                      }

                      if (!regEmail.hasMatch(val)) {
                        return 'Please enter a valid email';
                      }
                    } else if (_formData is ConfirmLoginForm) {
                      if (val == null || val.isEmpty) {
                        return 'Access Code is required.';
                      }

                      if (!regNumeric.hasMatch(val)) {
                        return 'Please add a valid numeric string';
                      }

                      if (val.length != 6) {
                        return 'Access Code needs to be 6 digits';
                      }
                    }

                    return null;
                  },
                  onSaved: (String? val) {
                    if (val != null) {
                      if (_formData is LoginForm) {
                        (_formData as LoginForm).email = val;
                      } else if (_formData is ConfirmLoginForm) {
                        (_formData as ConfirmLoginForm).accessCode = val;
                      }
                    }
                  },
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    viewModel.cancelSignIn();
                    Navigator.pop(context, route);
                  },
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      fontSize: sizes.fontSize,
                    ),
                  ),
                ),
                SizedBox(
                  width: sizes.fontSize / 2,
                ),
                TextButton(
                  onPressed: nullEmail
                      ? () {
                          if (_formKey.currentState == null) return;

                          if (!_formKey.currentState!.validate()) {
                            return;
                          }

                          _formKey.currentState!.save();
                          if (_formData is LoginForm) {
                            viewModel.signIn(_formData);
                          }
                        }
                      : () {
                          if (_formKey.currentState == null) return;

                          if (!_formKey.currentState!.validate()) {
                            return;
                          }

                          _formKey.currentState!.save();
                          if (_formData is ConfirmLoginForm) {
                            viewModel.confirmSignIn(_formData);
                          }
                        },
                  child: Text(
                    nullEmail ? 'Next' : 'Confirm',
                    style: TextStyle(
                      fontSize: sizes.fontSize,
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}

class _LoginModalViewModel {
  final bool loading;
  final bool authenticated;
  final String? email;
  final void Function(LoginForm form) signIn;
  final VoidCallback cancelSignIn;
  final void Function(ConfirmLoginForm form) confirmSignIn;

  _LoginModalViewModel({
    required this.loading,
    required this.authenticated,
    required this.email,
    required this.signIn,
    required this.cancelSignIn,
    required this.confirmSignIn,
  });

  factory _LoginModalViewModel.fromStore(Store<AppState> store) {
    final authState = selectAuthState(store);

    return _LoginModalViewModel(
      loading: authState.loading,
      authenticated: authState.authenticated,
      email: authState.email,
      signIn: (form) => store.dispatch(loginUser(form)),
      cancelSignIn: () => store.dispatch(RemoveAuthEmail()),
      confirmSignIn: (form) => store.dispatch(confirmUserLogin(form)),
    );
  }

  @override
  int get hashCode =>
      (loading ? 1 : 0) + email.hashCode + (authenticated ? 1 : 0);

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
