import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../src/components/models/user_profile.dart';
import '../src/components/sizes/users/user_profile_sizes.dart';
import '../src/redux/actions/users_actions.dart';
import '../src/redux/app_selectors.dart';
import '../src/redux/app_state.dart';
import '../src/widgets/layout/loading_widget.dart';
import '../src/widgets/layout/responsive_scaffold.dart';
import '../src/widgets/records/user_records/user_records.dart';
import '../src/widgets/users/user_profile_header.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profiles/:username';
  static const name = 'profiles';

  final String username;

  const ProfileScreen({
    Key? key,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = UserProfileSizes.getUserProfileSizes(width);

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
          if (viewModel.profile == null) {
            if (viewModel.loading) return const LoadingWidget();

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'USER NOT FOUND',
                  style: TextStyle(
                    fontSize: sizes.fontSize,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.person_off_rounded,
                  size: sizes.fontSize * 5,
                ),
              ],
            );
          }

          return SizedBox(
            width: sizes.width,
            child: Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(sizes.borderRadius),
              ),
              child: Column(
                children: [
                  UserProfileHeader(
                    user: viewModel.profile!.user,
                  ),
                  const UserRecords(),
                ],
              ),
            ),
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
  int get hashCode {
    int total = 0;

    if (loading) total++;

    if (profile != null) {
      total += profile!.user.id;

      if (profile!.user.picture != null) {
        total += profile!.user.picture.hashCode;
      }
    }

    return total;
  }

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
