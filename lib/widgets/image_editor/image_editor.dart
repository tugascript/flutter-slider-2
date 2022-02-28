import 'dart:typed_data';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:v1/utilities/sizes/image_editor_size.dart';

import '../../redux/actions/image_editor_actions.dart';
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
    final size = ImageEditorSize.getImageEditorSize(width);
    return StoreConnector<AppState, _ImageEditorViewModel>(
      distinct: true,
      converter: (store) => _ImageEditorViewModel.fromStore(store),
      builder: (_, viewModel) {
        if (viewModel.image == null) {
          return Container();
        }

        return SizedBox(
          height: size,
          width: size,
          child: ExtendedImage.memory(
            viewModel.image!,
            fit: BoxFit.contain,
            mode: ExtendedImageMode.editor,
            key: _editorKey,
            initEditorConfigHandler: (state) {
              viewModel.updateState(state);
              return EditorConfig(
                maxScale: 8.0,
                cropRectPadding: const EdgeInsets.all(20.0),
                hitTestSize: 20.0,
                cropAspectRatio: CropAspectRatios.ratio1_1,
              );
            },
          ),
        );
      },
    );
  }
}

class _ImageEditorViewModel {
  final Uint8List? image;
  final bool open;
  final ExtendedImageState? state;
  final void Function(ExtendedImageState?) updateState;

  _ImageEditorViewModel({
    required this.image,
    required this.open,
    required this.state,
    required this.updateState,
  });

  factory _ImageEditorViewModel.fromStore(Store<AppState> store) {
    final imageEditorState = selectImageEditorState(store);

    return _ImageEditorViewModel(
      image: imageEditorState.image,
      open: imageEditorState.open,
      state: imageEditorState.state,
      updateState: (state) => store.dispatch(ChangeEditorState(state)),
    );
  }

  @override
  int get hashCode => (open ? 1 : 0) + image.hashCode + state.hashCode;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
