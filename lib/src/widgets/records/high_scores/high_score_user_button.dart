import 'package:flutter/material.dart';

import '../../../components/models/user.dart';

class HighScoreUserButton extends StatelessWidget {
  final double avatarSize;
  final double fontSize;
  final double borderWidth;
  final double spacing;
  final Color color;
  final User user;

  const HighScoreUserButton({
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
    final _avatar = user.picture == null
        ? CircleAvatar(
            backgroundColor: color,
            child: Text(
              user.username.substring(0, 2).toUpperCase(),
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            backgroundImage: NetworkImage(user.picture!),
          );

    return SizedBox(
      height: avatarSize * 1.5,
      width: avatarSize * 5,
      child: OutlinedButton(
        onPressed: () {},
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
              SizedBox(
                height: avatarSize,
                width: avatarSize,
                child: _avatar,
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
