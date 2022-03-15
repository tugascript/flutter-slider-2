import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:v1/src/widgets/users/loading_avatar.dart';

import '../../components/models/user.dart';
import '../../components/sizes/users/user_profile_sizes.dart';
import '../../redux/app_selectors.dart';
import '../../redux/app_state.dart';
import '../../widgets/users/add_user_picture.dart';
import 'user_avatar.dart';

class UserProfileHeader extends StatelessWidget {
  final User user;

  const UserProfileHeader({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = UserProfileSizes.getUserProfileSizes(width);
    final _spacing = SizedBox(
      height: sizes.spacing,
    );

    return SizedBox(
      height: sizes.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StoreConnector<AppState, _UserProfileHeaderViewModel>(
            distinct: true,
            converter: (store) => _UserProfileHeaderViewModel.fromStore(store),
            builder: (_, viewModel) {
              if (viewModel.loading) {
                return LoadingAvatar(size: sizes.avatar);
              }

              if (viewModel.currentUser != null &&
                  viewModel.currentUser!.id == user.id) {
                return AddUserPicture(
                  size: sizes.avatar,
                  username: user.username,
                  picture: user.picture,
                );
              }

              return UserAvatar(
                size: sizes.avatar,
                username: user.username,
                picture: user.picture,
              );
            },
          ),
          _spacing,
          Text(
            user.username.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: sizes.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (user.maxLevel != null) ...[
            _spacing,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Max Level: ',
                  style: TextStyle(
                    fontSize: sizes.fontSize * 0.8,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  user.maxLevel!.toString(),
                  style: TextStyle(
                    fontSize: sizes.fontSize * 0.8,
                  ),
                ),
              ],
            ),
          ]
        ],
      ),
    );
  }
}

class _UserProfileHeaderViewModel {
  final User? currentUser;
  final bool authenticated;
  final bool loading;

  _UserProfileHeaderViewModel({
    required this.currentUser,
    required this.authenticated,
    required this.loading,
  });

  factory _UserProfileHeaderViewModel.fromStore(Store<AppState> store) {
    final authState = selectAuthState(store);

    return _UserProfileHeaderViewModel(
      currentUser: authState.user,
      authenticated: authState.authenticated,
      loading: authState.loading,
    );
  }

  @override
  int get hashCode => (loading ? 1 : 0) + (authenticated ? 1 : 0);

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
