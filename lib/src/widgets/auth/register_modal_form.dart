import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../components/models/app_notification.dart';
import '../../components/models/auth/forms/confirm_login_form.dart';
import '../../components/models/auth/forms/register_form.dart';
import '../../components/sizes/auth/nav_form_sizes.dart';
import '../../redux/actions/auth_actions.dart';
import '../../redux/app_selectors.dart';
import '../../redux/app_state.dart';
import '../../utilities/regexes.dart';
import 'auth_snackbar.dart';

class RegisterModalForm extends StatefulWidget {
  final BuildContext ctx;
  const RegisterModalForm({
    Key? key,
    required this.ctx,
  }) : super(key: key);

  @override
  State<RegisterModalForm> createState() => _RegisterModalFormState();
}

class _RegisterModalFormState extends State<RegisterModalForm> {
  static const _route = '/register-modal';
  static const _loading = 'Loading...';
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  dynamic _formData = RegisterForm();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(widget.ctx).size.width;
    final sizes = NavFormSizes.getNavFormSizes(width);
    final height = sizes.fontSize * 8;

    return StoreConnector<AppState, _RegisterModalViewModel>(
        distinct: true,
        converter: (store) => _RegisterModalViewModel.fromStore(store),
        onWillChange: (_, viewModel) {
          if (viewModel.email != null) {
            setState(() {
              _formData = ConfirmLoginForm(viewModel.email!);
              _formKey = GlobalKey<FormState>();
            });
          }

          if (viewModel.authenticated) {
            Navigator.pop(context, _route);
          }
        },
        builder: (_, viewModel) {
          final nullEmail = viewModel.email == null;
          final hasNotification = viewModel.notification != null;
          final inputDecoration = nullEmail
              ? const InputDecoration(
                  hintText: 'Your@Email.com',
                  labelText: 'Email',
                  helperText: '',
                )
              : const InputDecoration(
                  hintText: 'XXXXXX',
                  labelText: 'Access Code',
                  helperText: 'An access code has been sent to your email.',
                );

          void _submitForm() {
            if (nullEmail) {
              if (_formKey.currentState == null) return;

              if (!_formKey.currentState!.validate()) {
                return;
              }

              _formKey.currentState!.save();
              if (_formData is RegisterForm) {
                viewModel.signUp(_formData);
              }
            } else {
              if (_formKey.currentState == null) return;

              if (!_formKey.currentState!.validate()) {
                return;
              }

              _formKey.currentState!.save();
              if (_formData is ConfirmLoginForm) {
                viewModel.confirmSignUp(_formData);
              }
            }
          }

          return Form(
            key: _formKey,
            child: AlertDialog(
              title: Text(
                viewModel.loading
                    ? _loading
                    : nullEmail
                        ? 'Sign In'
                        : 'Confirm Sign in',
                style: TextStyle(
                  fontSize: sizes.fontSize * 1.2,
                ),
              ),
              content: SizedBox(
                width: sizes.width,
                height: nullEmail || hasNotification ? height : height / 2,
                child: Column(
                  children: [
                    if (hasNotification) const AuthSnackbar(),
                    TextFormField(
                      style: TextStyle(
                        fontSize: sizes.fontSize,
                      ),
                      decoration: inputDecoration,
                      validator: (String? val) {
                        if (_formData is RegisterForm) {
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
                          if (_formData is RegisterForm) {
                            (_formData as RegisterForm).email = val;
                          } else if (_formData is ConfirmLoginForm) {
                            (_formData as ConfirmLoginForm).accessCode = val;
                          }
                        }
                      },
                      textInputAction: nullEmail
                          ? TextInputAction.next
                          : TextInputAction.done,
                      onFieldSubmitted:
                          nullEmail ? (_) {} : (_) => _submitForm(),
                    ),
                    if (nullEmail)
                      TextFormField(
                        style: TextStyle(
                          fontSize: sizes.fontSize,
                        ),
                        decoration: const InputDecoration(
                          hintText: 'some-username',
                          labelText: 'Username',
                          helperText: '',
                        ),
                        validator: (String? val) {
                          if (_formData is RegisterForm) {
                            if (val == null || val.isEmpty) {
                              return 'Username is required.';
                            }

                            if (!regUsername.hasMatch(val)) {
                              return 'Please enter a valid username';
                            }
                          }

                          return null;
                        },
                        onSaved: (String? val) {
                          if (val != null) {
                            if (_formData is RegisterForm) {
                              (_formData as RegisterForm).username = val;
                            }
                          }
                        },
                        onFieldSubmitted: (_) => _submitForm(),
                      ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: viewModel.loading
                      ? () {}
                      : () {
                          viewModel.cancelSignUp();
                          Navigator.pop(context, _route);
                        },
                  child: Text(
                    viewModel.loading ? _loading : 'Cancel',
                    style: TextStyle(
                      fontSize: sizes.fontSize,
                    ),
                  ),
                ),
                SizedBox(
                  width: sizes.fontSize / 2,
                ),
                TextButton(
                  onPressed: viewModel.loading ? () {} : _submitForm,
                  child: Text(
                    viewModel.loading
                        ? _loading
                        : nullEmail
                            ? 'Next'
                            : 'Confirm',
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

class _RegisterModalViewModel {
  final bool loading;
  final bool authenticated;
  final String? email;
  final AppNotification? notification;
  final void Function(RegisterForm) signUp;
  final VoidCallback cancelSignUp;
  final void Function(ConfirmLoginForm) confirmSignUp;

  _RegisterModalViewModel({
    required this.loading,
    required this.authenticated,
    required this.email,
    required this.notification,
    required this.signUp,
    required this.cancelSignUp,
    required this.confirmSignUp,
  });

  factory _RegisterModalViewModel.fromStore(Store<AppState> store) {
    final authState = selectAuthState(store);

    return _RegisterModalViewModel(
      loading: authState.loading,
      authenticated: authState.authenticated,
      email: authState.email,
      notification: authState.notification,
      signUp: (form) => store.dispatch(registerUser(form)),
      cancelSignUp: () => store.dispatch(RemoveAuthEmail()),
      confirmSignUp: (form) => store.dispatch(confirmUserLogin(form)),
    );
  }

  @override
  int get hashCode =>
      (loading ? 1 : 0) + email.hashCode + (authenticated ? 2 : 0);

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
