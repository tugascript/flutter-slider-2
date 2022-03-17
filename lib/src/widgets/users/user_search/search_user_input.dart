import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../../components/models/search_user_form.dart';
import '../../../redux/actions/users_actions.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';
import '../../../utilities/regexes.dart';

class SearchUserInput extends StatefulWidget {
  final double fontSize;
  final double width;

  const SearchUserInput({
    Key? key,
    required this.fontSize,
    required this.width,
  }) : super(key: key);

  @override
  State<SearchUserInput> createState() => _SearchUserInputState();
}

class _SearchUserInputState extends State<SearchUserInput> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _formData = SearchUserForm();

  @override
  Widget build(BuildContext context) {
    final iconSize = widget.fontSize * 1.5;
    final color = Theme.of(context).colorScheme.onSurface;

    return StoreConnector<AppState, _SearchUserViewModel>(
      distinct: true,
      converter: (store) => _SearchUserViewModel.fromStore(store),
      builder: (_, viewModel) {
        void _submitForm() {
          if (_formKey.currentState == null) return;

          if (!_formKey.currentState!.validate()) return;

          _formKey.currentState!.save();

          if (_formData.search.isNotEmpty) {
            viewModel.searchUser(_formData);
          }
        }

        return Form(
          key: _formKey,
          child: Container(
            width: widget.width,
            padding: EdgeInsets.all(widget.fontSize / 2.5),
            child: Row(children: [
              Expanded(
                child: TextFormField(
                  maxLines: 1,
                  enabled: !viewModel.loading,
                  style: TextStyle(fontSize: widget.fontSize),
                  decoration: InputDecoration(
                    hintText: 'Username?',
                    labelText: viewModel.loading ? 'Loading...' : 'Search',
                    helperText: '',
                  ),
                  validator: (String? val) {
                    if (val != null &&
                        val.isNotEmpty &&
                        !regUsername.hasMatch(val)) {
                      return 'Username only contain letters, dots, slashes, underscores and numbers.';
                    }

                    return null;
                  },
                  onSaved: (String? val) {
                    if (val != null && val.isNotEmpty) {
                      _formData.search = val;
                    }
                  },
                  onFieldSubmitted: (_) => _submitForm(),
                ),
              ),
              SizedBox(width: widget.fontSize / 2),
              TextButton(
                onPressed: viewModel.loading ? () {} : _submitForm,
                child: viewModel.loading
                    ? SizedBox.square(
                        dimension: iconSize,
                        child: CircularProgressIndicator(
                          color: color,
                        ),
                      )
                    : Center(
                        child: Icon(
                          Icons.search_rounded,
                          size: iconSize,
                          color: color,
                        ),
                      ),
              ),
            ]),
          ),
        );
      },
    );
  }
}

class _SearchUserViewModel {
  final bool loading;
  final void Function(SearchUserForm) searchUser;

  _SearchUserViewModel({
    required this.loading,
    required this.searchUser,
  });

  factory _SearchUserViewModel.fromStore(Store<AppState> store) {
    final usersState = selectUsersState(store);

    return _SearchUserViewModel(
      loading: usersState.loading,
      searchUser: (form) {
        if (usersState.search == null || form.search != usersState.search) {
          store.dispatch(loadUsers(search: form.search));
        }
      },
    );
  }

  @override
  int get hashCode => (loading ? 1 : 0);

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
