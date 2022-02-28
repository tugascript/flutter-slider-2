import 'package:flutter/material.dart';
import 'package:v1/widgets/image_editor/image_editor_actions.dart';

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
      bottomNavigation: ImageEditorActions(),
    );
  }
}
