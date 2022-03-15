import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../screens/profile_screen.dart';
import '../../../components/models/user.dart';
import '../../../utilities/arguments/profile_screen_arguments.dart';
import '../../../utilities/router/app_router_delegate.dart';
import '../../users/user_avatar.dart';

class HighScoreUserButton extends StatelessWidget {
  final AppRouterDelegate delegate = Get.find();
  final double avatarSize;
  final double fontSize;
  final double borderWidth;
  final double spacing;
  final Color color;
  final User user;

  HighScoreUserButton({
    Key? key,
    required this.avatarSize,
    required this.fontSize,
    required this.borderWidth,
    required this.spacing,
    required this.color,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: avatarSize * 1.5,
      width: avatarSize * 5,
      child: OutlinedButton(
        onPressed: () => delegate.pushPage(
          name: ProfileScreen.routeName,
          arguments: ProfileScreenArguments(user.username),
        ),
        style: OutlinedButton.styleFrom(
          elevation: 0,
          side: BorderSide(
            width: borderWidth,
            color: color,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                100,
              ),
            ),
          ),
        ),
        child: Container(
          margin: EdgeInsets.all(spacing),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UserAvatar(
                size: avatarSize,
                username: user.username,
                picture: user.picture,
              ),
              Flexible(
                child: Text(
                  user.username,
                  style: TextStyle(
                    fontSize: fontSize,
                    color: color,
                  ),
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
