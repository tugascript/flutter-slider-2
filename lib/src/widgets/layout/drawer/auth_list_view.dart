import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:v1/src/redux/actions/auth_actions.dart';
import 'package:v1/src/widgets/layout/drawer/draw_tile.dart';

import '../../../components/models/user.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';

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
        final _avatar = user == null || user.picture == null
            ? CircleAvatar(
                backgroundColor: colorScheme.onPrimary,
                child: Text(
                  viewModel.user?.username.substring(0, 2).toUpperCase() ??
                      'US',
                  style: TextStyle(
                    color: colorScheme.primary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            : CircleAvatar(
                backgroundColor: colorScheme.onPrimary,
                backgroundImage: NetworkImage(
                  viewModel.user!.picture!,
                ),
              );

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
                  SizedBox(
                    width: 65,
                    height: 65,
                    child: _avatar,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    user?.username ?? 'username',
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
              onTap: () => Navigator.pushNamed(context, 'profile'),
            ),
            _spacer,
            DrawerTile(
              icon: Icons.logout_rounded,
              title: 'LOGOUT',
              onTap: viewModel.logout,
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
  final VoidCallback logout;

  _AuthListViewModel({
    required this.user,
    required this.authenticated,
    required this.logout,
  });

  factory _AuthListViewModel.fromStore(Store<AppState> store) {
    final authState = selectAuthState(store);

    return _AuthListViewModel(
      user: authState.user,
      authenticated: authState.authenticated,
      logout: () => store.dispatch(logoutUser()),
    );
  }

  @override
  int get hashCode => authenticated ? 1 : 0;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
