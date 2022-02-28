import 'dart:typed_data';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:v1/utilities/sizes/break_point.dart';

import '../../redux/app_selectors.dart';
import '../../redux/app_state.dart';

class ImageEditor extends StatefulWidget {
  const ImageEditor({Key? key}) : super(key: key);

  @override
  State<ImageEditor> createState() => _ImageEditorState();
}

class _ImageEditorState extends State<ImageEditor> {
  final GlobalKey<ExtendedImageEditorState> _editorKey =
      GlobalKey<ExtendedImageEditorState>();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final breakPoints = BreakPoint(width);
    return StoreConnector<AppState, _ImageEditorViewModel>(
      distinct: true,
      converter: (store) => _ImageEditorViewModel.fromStore(store),
      builder: (_, viewModel) {
        if (viewModel.image == null) {
          return Container();
        }

        final _editor = ExtendedImage.memory(
          viewModel.image!,
          fit: BoxFit.contain,
          mode: ExtendedImageMode.editor,
          key: _editorKey,
          initEditorConfigHandler: (state) {
            return EditorConfig(
              maxScale: 8.0,
              cropRectPadding: const EdgeInsets.all(20.0),
              hitTestSize: 20.0,
              cropAspectRatio: CropAspectRatios.ratio1_1,
            );
          },
        );

        if (breakPoints.greatXL) {
          return SizedBox(
            width: 0.5 * width,
            child: _editor,
          );
        } else if (breakPoints.greatLG) {
          return SizedBox(
            width: 0.6 * width,
            child: _editor,
          );
        } else if (breakPoints.greatMD) {
          return SizedBox(
            width: 0.7 * width,
            child: _editor,
          );
        } else if (breakPoints.greatSM) {
          return SizedBox(
            width: 0.8 * width,
            child: _editor,
          );
        } else {
          return SizedBox(
            width: 0.9 * width,
            child: _editor,
          );
        }
      },
    );
  }
}

class _ImageEditorViewModel {
  final Uint8List? image;
  final bool open;

  _ImageEditorViewModel({
    required this.image,
    required this.open,
  });

  factory _ImageEditorViewModel.fromStore(Store<AppState> store) {
    final imageEditorState = selectImageEditorState(store);

    return _ImageEditorViewModel(
      image: imageEditorState.image,
      open: imageEditorState.open,
    );
  }

  @override
  int get hashCode => (open ? 1 : 0) + image.hashCode;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
