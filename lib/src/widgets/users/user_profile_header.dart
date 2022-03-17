import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:v1/src/widgets/users/loading_avatar.dart';

import '../../components/models/user.dart';
import '../../components/sizes/users/user_hearder_sizes.dart';
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
    final sizes = UserHeaderSizes.getUserHeaderSizes(width);
    final colorScheme = Theme.of(context).colorScheme;
    final isLightTheme = colorScheme.primary.value == 0xFF02569B;
    final textColor =
        isLightTheme ? colorScheme.onPrimary : colorScheme.primary;
    final radius = Radius.circular(sizes.borderRadius);
    final _spacing = SizedBox(
      height: sizes.spacing,
    );

    return Container(
      height: sizes.height,
      decoration: BoxDecoration(
        color: isLightTheme ? colorScheme.primary : colorScheme.onPrimary,
        borderRadius: BorderRadius.only(
          topRight: radius,
          topLeft: radius,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _spacing,
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
                  invert: true,
                );
              }

              return UserAvatar(
                size: sizes.avatar,
                username: user.username,
                picture: user.picture,
                invert: true,
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
              color: textColor,
            ),
          ),
          _spacing,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Max Level: ',
                style: TextStyle(
                  fontSize: sizes.fontSize * 0.8,
                  fontWeight: FontWeight.w600,
                  color: textColor,
                ),
              ),
              Text(
                user.maxLevel?.toString() ?? '1',
                style: TextStyle(
                  fontSize: sizes.fontSize * 0.8,
                  color: textColor,
                ),
              ),
            ],
          ),
          _spacing,
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
  int get hashCode => (loading ? 1 : 0) + (authenticated ? 2 : 0);

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
