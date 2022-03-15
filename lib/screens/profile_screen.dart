import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../src/components/models/user_profile.dart';
import '../src/redux/actions/users_actions.dart';
import '../src/redux/app_selectors.dart';
import '../src/redux/app_state.dart';
import '../src/widgets/layout/loading_widget.dart';
import '../src/widgets/layout/responsive_scaffold.dart';
import '../src/widgets/records/user_records/user_records.dart';
import '../src/widgets/users/user_profile_header.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile';

  final String username;

  const ProfileScreen({
    Key? key,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      title: username.toUpperCase(),
      child: StoreConnector<AppState, _ProfileScreenViewModel>(
        distinct: true,
        converter: (store) => _ProfileScreenViewModel.fromStore(store),
        onInit: (store) {
          final profile = selectUserProfile(store);

          if (profile == null || profile.user.username != username) {
            store.dispatch(loadProfile(username, 1));
          }
        },
        builder: (_, viewModel) {
          if (viewModel.loading || viewModel.profile == null) {
            return const LoadingWidget();
          }

          return Column(
            children: [
              UserProfileHeader(
                user: viewModel.profile!.user,
              ),
              const UserRecords(),
            ],
          );
        },
      ),
    );
  }
}

class _ProfileScreenViewModel {
  final bool loading;
  final UserProfile? profile;

  const _ProfileScreenViewModel({
    required this.loading,
    required this.profile,
  });

  factory _ProfileScreenViewModel.fromStore(Store<AppState> store) {
    final usersState = selectUsersState(store);

    return _ProfileScreenViewModel(
      loading: usersState.loading,
      profile: usersState.profile,
    );
  }

  @override
  int get hashCode =>
      (loading ? 0 : 1) +
      (profile != null
          ? profile!.user.id +
              (profile!.user.picture != null
                  ? profile!.user.picture.hashCode
                  : 0)
          : 0);

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
