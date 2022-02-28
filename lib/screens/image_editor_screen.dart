import 'package:flutter/material.dart';

import '../widgets/image_editor/image_editor.dart';
import '../widgets/layout/basic_scaffold.dart';

class ImageEditorScreen extends StatelessWidget {
  static const routeName = '/editor';

  const ImageEditorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BasicScaffold(
      title: 'Image Editor',
      child: ImageEditor(),
    );
  }
}
