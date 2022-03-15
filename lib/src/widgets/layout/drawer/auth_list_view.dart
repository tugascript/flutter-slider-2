import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get/get.dart';
import 'package:redux/redux.dart';

import '../../../../screens/profile_screen.dart';
import '../../../components/models/user.dart';
import '../../../redux/actions/auth_actions.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';
import '../../../utilities/arguments/profile_screen_arguments.dart';
import '../../../utilities/router/app_router_delegate.dart';
import '../../users/user_avatar.dart';
import 'draw_tile.dart';

class AuthListView extends StatelessWidget {
  final AppRouterDelegate delegate = Get.find();
  AuthListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    const _spacer = SizedBox(
      height: 10,
    );

    return StoreConnector<AppState, _AuthListViewModel>(
      distinct: true,
      converter: (store) => _AuthListViewModel.fromStore(store),
      builder: (_, viewModel) {
        final user = viewModel.user;
        final username = user?.username ?? 'username';

        return ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: colorScheme.primary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UserAvatar(
                    size: 65,
                    username: username,
                    picture: user?.picture,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    username,
                    style: TextStyle(
                      color: colorScheme.onPrimary,
                      fontSize: 25,
                    ),
                  )
                ],
              ),
            ),
            _spacer,
            DrawerTile(
              icon: Icons.person_rounded,
              title: 'PROFILE',
              onTap: () {
                if (user != null) {
                  delegate.pushPage(
                    name: ProfileScreen.routeName,
                    arguments: ProfileScreenArguments(username),
                  );
                }
              },
            ),
            _spacer,
            DrawerTile(
              icon: Icons.logout_rounded,
              title: 'LOGOUT',
              onTap: () {
                viewModel.logout();
                delegate.popRoute();
              },
            ),
          ],
        );
      },
    );
  }
}

class _AuthListViewModel {
  final User? user;
  final bool authenticated;
  final bool loading;
  final VoidCallback logout;

  _AuthListViewModel({
    required this.user,
    required this.loading,
    required this.authenticated,
    required this.logout,
  });

  factory _AuthListViewModel.fromStore(Store<AppState> store) {
    final authState = selectAuthState(store);

    return _AuthListViewModel(
      user: authState.user,
      authenticated: authState.authenticated,
      loading: authState.loading,
      logout: () => store.dispatch(logoutUser()),
    );
  }

  @override
  int get hashCode =>
      (authenticated ? 1 : 0) + (user != null ? 1 : 0) + (loading ? 0 : 1);

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
