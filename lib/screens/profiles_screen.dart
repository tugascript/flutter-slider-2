import 'package:flutter/material.dart';

import '../src/components/sizes/users/user_profile_sizes.dart';
import '../src/widgets/layout/responsive_scaffold.dart';
import '../src/widgets/users/user_search/user_search.dart';

class ProfilesScreen extends StatelessWidget {
  static const routeName = '/profiles';

  const ProfilesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = UserProfileSizes.getUserProfileSizes(width);

    return ResponsiveScaffold(
      title: 'PROFILES',
      child: SizedBox(
        width: sizes.width,
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(sizes.borderRadius),
          ),
          child: const UserSearch(),
        ),
      ),
    );
  }
}
