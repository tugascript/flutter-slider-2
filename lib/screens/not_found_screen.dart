import 'package:flutter/material.dart';

import '../src/widgets/layout/responsive_scaffold.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveScaffold(
      title: 'Not found',
      child: Text('404 NOT FOUND'),
    );
  }
}
