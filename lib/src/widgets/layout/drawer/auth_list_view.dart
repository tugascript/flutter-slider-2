import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:go_router/go_router.dart';
import 'package:redux/redux.dart';
import 'package:v1/screens/home_screen.dart';

import '../../../../screens/profile_screen.dart';
import '../../../components/models/user.dart';
import '../../../redux/actions/auth_actions.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';
import '../../users/user_avatar.dart';
import 'draw_tile.dart';

class AuthListView extends StatelessWidget {
  const AuthListView({Key? key}) : super(key: key);

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
                    invert: colorScheme.primary.value == 0xFF02569B,
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
              title: 'ME',
              onTap: () {
                if (user != null) {
                  GoRouter.of(context).push('/${ProfileScreen.name}/$username');
                }
              },
            ),
            _spacer,
            DrawerTile(
              icon: Icons.person_search_rounded,
              title: 'PROFILES',
              onTap: () {
                GoRouter.of(context).push('/${ProfileScreen.name}');
              },
            ),
            _spacer,
            DrawerTile(
              icon: Icons.logout_rounded,
              title: 'LOGOUT',
              onTap: () {
                viewModel.logout();
                GoRouter.of(context).push(HomeScreen.routeName);
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
