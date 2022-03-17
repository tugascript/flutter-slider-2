import 'package:flutter/material.dart';
import 'package:v1/src/components/sizes/layout/font_size.dart';

import '../src/widgets/layout/responsive_scaffold.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final fontSize = FontSize.getFontSize(width);

    return ResponsiveScaffold(
      title: '404',
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'PAGE NOT FOUND',
            style: TextStyle(
              fontSize: fontSize * 1.5,
              fontWeight: FontWeight.w500,
            ),
          ),
          Icon(
            Icons.broken_image_rounded,
            size: fontSize * 7,
          ),
        ],
      ),
    );
  }
}
