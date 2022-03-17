import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../screens/profile_screen.dart';
import '../../../components/models/user.dart';
import '../../../components/sizes/users/user_search_item_sizes.dart';
import '../../../widgets/users/user_avatar.dart';

class UserSearchItem extends StatelessWidget {
  final User user;
  final BuildContext ctx;

  const UserSearchItem({
    Key? key,
    required this.user,
    required this.ctx,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(ctx).size.width;
    final sizes = UserSearchItemSizes.getUserSearchItemSizes(width);
    final subtitleSize = sizes.fontSize * 0.65;

    return ListTile(
      mouseCursor: SystemMouseCursors.click,
      leading: UserAvatar(
        size: sizes.avatar,
        username: user.username,
        picture: user.picture,
      ),
      title: Text(
        user.username.toUpperCase(),
        style: TextStyle(
          fontSize: sizes.fontSize,
          fontWeight: FontWeight.w800,
        ),
      ),
      subtitle: Row(
        children: [
          Text(
            'MAX LEVEL: ',
            style: TextStyle(
              fontSize: subtitleSize,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            user.maxLevel?.toString() ?? '0',
            style: TextStyle(
              fontSize: subtitleSize,
            ),
          ),
        ],
      ),
      onTap: () {
        GoRouter.of(context).push('/${ProfileScreen.name}/${user.username}');
      },
    );
  }
}
