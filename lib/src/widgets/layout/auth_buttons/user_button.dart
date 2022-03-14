import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../../components/models/user.dart';
import '../../../components/sizes/layout/nav_btn_sizes.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';

class UserButton extends StatelessWidget {
  const UserButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final width = MediaQuery.of(context).size.width;
    final sizes = NavBtnSizes.getNavBtnSizes(width);
    final halfPadding = sizes.padding / 2;
    final color = colorScheme.primary.value == 0xFF02569B
        ? colorScheme.primary
        : colorScheme.onPrimary;

    return StoreConnector<AppState, _UserButtonViewModel>(
        distinct: true,
        converter: (store) => _UserButtonViewModel.fromStore(store),
        builder: (_, viewModel) {
          final user = viewModel.user;
          final _avatar = user == null || user.picture == null
              ? CircleAvatar(
                  backgroundColor: color,
                  child: Text(
                    viewModel.user?.username.substring(0, 2).toUpperCase() ??
                        'US',
                  ),
                )
              : CircleAvatar(
                  backgroundColor: color,
                  backgroundImage: NetworkImage(
                    viewModel.user!.picture!,
                  ),
                );

          return Container(
            padding: EdgeInsets.symmetric(
              vertical: sizes.padding,
              horizontal: halfPadding,
            ),
            child: TextButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: Row(
                children: [
                  _avatar,
                  SizedBox(
                    width: halfPadding,
                  ),
                  Text(
                    viewModel.user?.username ?? 'username',
                    style: TextStyle(
                      fontSize: sizes.fontSize,
                      color: color,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                  )
                ],
              ),
            ),
          );
        });
  }
}

class _UserButtonViewModel {
  final User? user;

  _UserButtonViewModel(this.user);

  factory _UserButtonViewModel.fromStore(Store<AppState> store) {
    return _UserButtonViewModel(selectAuthState(store).user);
  }

  @override
  int get hashCode => user?.id ?? 0;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
