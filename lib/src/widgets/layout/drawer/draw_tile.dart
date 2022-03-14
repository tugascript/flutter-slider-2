import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const DrawerTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
      ),
      enabled: true,
      onTap: onTap,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          height: 0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
