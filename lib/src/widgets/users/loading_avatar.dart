import 'package:flutter/material.dart';

class LoadingAvatar extends StatelessWidget {
  final double size;

  const LoadingAvatar({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final innerSize = size / 3;

    return SizedBox(
      width: size,
      height: size,
      child: CircleAvatar(
        backgroundColor: Colors.grey,
        child: SizedBox(
          height: innerSize,
          width: innerSize,
          child: const CircularProgressIndicator(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
