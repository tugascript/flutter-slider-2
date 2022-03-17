import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../../components/models/user.dart';
import '../../../components/sizes/records/user_records_sizes.dart';
import '../../../redux/actions/users_actions.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';
import 'search_user_input.dart';
import 'user_search_item.dart';

class UserSearch extends StatefulWidget {
  const UserSearch({Key? key}) : super(key: key);

  @override
  State<UserSearch> createState() => _UserSearchState();
}

class _UserSearchState extends State<UserSearch> {
  final _scrollController = ScrollController();
  _UserSearchViewModel? _viewModel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final sizes = UserRecordSizes.getUserRecordSizes(size.width);
    final spacing = sizes.fontSize / 1.5;
    final mainSize = size.height * 0.8 - sizes.fontSize * 2;
    final colorScheme = Theme.of(context).colorScheme;

    return StoreConnector<AppState, _UserSearchViewModel>(
      distinct: true,
      converter: (store) => _UserSearchViewModel.fromStore(store),
      onInit: (store) {
        _viewModel = _UserSearchViewModel.fromStore(store);

        if (_viewModel!.users.isEmpty) store.dispatch(loadUsers());

        _scrollController.addListener(() {
          final currentPos = _scrollController.position.pixels;
          final maxExtent = _scrollController.position.maxScrollExtent;

          if (currentPos >= maxExtent && _viewModel != null) {
            if (_viewModel!.hasNextPage &&
                _viewModel!.cursor != null &&
                !_viewModel!.loading) {
              _viewModel!.loadMoreUsers(_viewModel!.cursor!);
            }
          }
        });
      },
      onWillChange: (_, viewModel) {
        _viewModel = viewModel;
      },
      builder: (_, viewModel) {
        return SizedBox(
          width: sizes.width,
          height: mainSize,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SearchUserInput(
                fontSize: sizes.fontSize,
                width: sizes.width,
              ),
              SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.fromLTRB(spacing, 0, spacing, spacing),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: sizes.borderWidth,
                      color: colorScheme.primary.value == 0xFF02569B
                          ? colorScheme.onSurface
                          : colorScheme.onPrimary,
                    ),
                    borderRadius: BorderRadius.circular(sizes.borderRadius),
                  ),
                  height: mainSize - sizes.fontSize * 5.5,
                  alignment: Alignment.center,
                  child: viewModel.users.isNotEmpty
                      ? ListView.separated(
                          controller: _scrollController,
                          itemBuilder: (_, i) => UserSearchItem(
                            user: viewModel.users[i],
                            ctx: context,
                          ),
                          itemCount: viewModel.users.length,
                          separatorBuilder: (_, i) => const Divider(),
                        )
                      : Text(
                          'No Users Found',
                          style: TextStyle(
                            fontSize: sizes.fontSize * 0.9,
                          ),
                        ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _UserSearchViewModel {
  final List<User> users;
  final bool hasNextPage;
  final bool loading;
  final String? cursor;
  final void Function(String) loadMoreUsers;

  _UserSearchViewModel({
    required this.users,
    required this.hasNextPage,
    required this.loading,
    required this.cursor,
    required this.loadMoreUsers,
  });

  factory _UserSearchViewModel.fromStore(Store<AppState> store) {
    final usersState = selectUsersState(store);

    return _UserSearchViewModel(
      users: usersState.users,
      loading: usersState.loading,
      hasNextPage: usersState.hasNextPage,
      cursor: usersState.cursor,
      loadMoreUsers: (after) => store.dispatch(
        loadUsers(after: after, search: usersState.search),
      ),
    );
  }

  @override
  int get hashCode => (loading ? 1 : 0) + users.length * 2;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
