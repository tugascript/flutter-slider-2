import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double size;
  final String username;
  final String? picture;
  final bool invert;

  const UserAvatar({
    Key? key,
    required this.size,
    required this.username,
    this.invert = false,
    this.picture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isLightTheme = colorScheme.primary.value == 0xFF02569B;
    final bgColor = isLightTheme ? colorScheme.primary : colorScheme.onPrimary;
    final tColor = isLightTheme ? colorScheme.onPrimary : colorScheme.primary;

    return SizedBox(
      width: size,
      height: size,
      child: picture == null
          ? CircleAvatar(
              backgroundColor: invert ? tColor : bgColor,
              child: Text(
                username.substring(0, 2).toUpperCase(),
                style: TextStyle(
                  fontSize: size / 3,
                  fontWeight: FontWeight.w700,
                  color: invert ? bgColor : tColor,
                ),
              ),
            )
          : CircleAvatar(
              backgroundColor: invert ? tColor : bgColor,
              backgroundImage: NetworkImage(picture!),
            ),
    );
  }
}
