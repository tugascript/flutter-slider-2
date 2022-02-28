import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../../models/auth/forms/confirm_login_form.dart';
import '../../../models/auth/forms/login_form.dart';
import '../../../redux/actions/auth_actions.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';
import '../../../utilities/regexps.dart';
import '../../../utilities/sizes/nav_form_sizes.dart';
import '../../../widgets/layout/auth_buttons/login_button.dart';

class LoginModalForm extends StatefulWidget {
  const LoginModalForm({Key? key}) : super(key: key);

  @override
  State<LoginModalForm> createState() => _LoginModalFormState();
}

class _LoginModalFormState extends State<LoginModalForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _firstData = LoginForm();
  late final ConfirmLoginForm _secondData;

  @override
  Widget build(BuildContext context) {
    return LoginButton(
      onPressed: () => showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          final width = MediaQuery.of(context).size.width;
          final sizes = NavFormSizes.getNavFormSizes(width);

          return Form(
            key: _formKey,
            child: AlertDialog(
              title: Text(
                'Sign In',
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
                  decoration: const InputDecoration(
                    hintText: 'Your@Email.com',
                    labelText: 'Email',
                  ),
                  validator: (String? val) {
                    if (val == null || val.isEmpty) {
                      return 'Email is required.';
                    }

                    if (!regEmail.hasMatch(val)) {
                      return 'Please enter a valid email';
                    }

                    return null;
                  },
                  onSaved: (String? val) {
                    if (val != null) {
                      setState(() {
                        _firstData.email = val;
                      });
                    }
                  },
                ),
              ),
              actions: [
                StoreConnector<AppState, _LoginModalViewModel>(
                  distinct: true,
                  converter: (store) => _LoginModalViewModel.fromStore(store),
                  builder: (_, viewModel) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            viewModel.cancelSignIn();
                            Navigator.pop(context, 'Cancel');
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
                          onPressed: viewModel.email == null
                              ? () {
                                  if (_formKey.currentState == null) return;

                                  if (!_formKey.currentState!.validate()) {
                                    return;
                                  }

                                  _formKey.currentState!.save();
                                  viewModel.signIn(_firstData);
                                }
                              : () {},
                          child: Text(
                            'Next',
                            style: TextStyle(
                              fontSize: sizes.fontSize,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _LoginModalViewModel {
  final bool loading;
  final String? email;
  final void Function(LoginForm form) signIn;
  final VoidCallback cancelSignIn;
  final void Function(ConfirmLoginForm form) confirmSignIn;

  _LoginModalViewModel({
    required this.loading,
    required this.email,
    required this.signIn,
    required this.cancelSignIn,
    required this.confirmSignIn,
  });

  factory _LoginModalViewModel.fromStore(Store<AppState> store) {
    final authState = selectAuthState(store);

    return _LoginModalViewModel(
      loading: authState.loading,
      email: authState.email,
      signIn: (form) => store.dispatch(loginUser(form)),
      cancelSignIn: () => store.dispatch(RemoveAuthEmail()),
      confirmSignIn: (form) => store.dispatch(confirmUserLogin(form)),
    );
  }

  @override
  int get hashCode => (loading ? 1 : 0) + email.hashCode;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
