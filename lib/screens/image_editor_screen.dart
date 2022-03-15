import 'dart:typed_data';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:worker_manager/worker_manager.dart';

import '../src/components/sizes/image_editor/image_editor_sizes.dart';
import '../src/redux/actions/auth_actions.dart';
import '../src/redux/actions/image_editor_actions.dart';
import '../src/redux/actions/server_images_actions.dart';
import '../src/redux/app_selectors.dart';
import '../src/redux/app_state.dart';
import '../src/utilities/arguments/crop_arguments.dart';
import '../src/utilities/helpers/crop_async_task.dart';
import '../src/widgets/image_editor/close_editor_button.dart';
import '../src/widgets/image_editor/done_editor_button.dart';
import '../src/widgets/layout/basic_scaffold.dart';

class ImageEditorScreen extends StatefulWidget {
  static const routeName = '/editor';
  final bool profilePicture;

  const ImageEditorScreen({
    Key? key,
    required this.profilePicture,
  }) : super(key: key);

  @override
  State<ImageEditorScreen> createState() => _ImageEditorScreenState();
}

class _ImageEditorScreenState extends State<ImageEditorScreen> {
  final GlobalKey<ExtendedImageEditorState> _editorKey =
      GlobalKey<ExtendedImageEditorState>();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = ImageEditorSize.getImageEditorSizes(width);
    final colorScheme = Theme.of(context).colorScheme;
    final isLightTheme = colorScheme.primary.value == 0xFF02569B;

    return StoreConnector<AppState, _ImageEditorViewModel>(
      distinct: true,
      converter: (store) => _ImageEditorViewModel.fromStore(store),
      onWillChange: (_, viewModel) {
        if (!viewModel.open) {
          Navigator.pop(context);
        }
      },
      builder: (_, viewModel) {
        late final Widget _editor;
        ButtonBar? _bottom;

        if (!viewModel.loading) {
          _bottom = ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              CloseEditorButton(
                width: sizes.width,
                height: sizes.height,
                borderRadius: sizes.borderRadius,
                iconSize: sizes.iconSize,
                borderWidth: sizes.borderWidth,
                mainColor:
                    isLightTheme ? colorScheme.primary : colorScheme.onPrimary,
              ),
              SizedBox(
                width: sizes.spacing,
              ),
              DoneEditorButton(
                width: sizes.width,
                height: sizes.height,
                borderRadius: sizes.borderRadius,
                iconSize: sizes.iconSize,
                isLightTheme: isLightTheme,
                colorScheme: colorScheme,
                onPressed: () {
                  final cropRect = _editorKey.currentState?.getCropRect();
                  final image = _editorKey.currentState?.rawImageData;

                  if (image != null && cropRect != null) {
                    viewModel.startLoading();

                    Future.delayed(const Duration(milliseconds: 150), () {
                      Executor()
                          .execute(
                            arg1: CropArguments(
                              cropRect: cropRect,
                              image: image,
                              uploader: widget.profilePicture
                                  ? viewModel.uploadProfilePicture
                                  : viewModel.uploadImage,
                            ),
                            fun1: cropImage,
                          )
                          .then((value) => Executor().dispose())
                          .catchError((e) => null);
                    });
                  }
                },
              ),
            ],
          );
        }

        if (viewModel.loading) {
          _editor = Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Processing Image...',
                style: TextStyle(
                  fontSize: sizes.iconSize,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                width: sizes.iconSize * 0.5,
              ),
              Text(
                'May take some time',
                style: TextStyle(
                  fontSize: sizes.iconSize * 0.8,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          );
        } else if (viewModel.image == null) {
          _editor = const SizedBox.shrink();
        } else {
          _editor = SizedBox(
            height: sizes.size,
            width: sizes.size,
            child: ExtendedImage.memory(
              viewModel.image!,
              fit: BoxFit.contain,
              mode: ExtendedImageMode.editor,
              extendedImageEditorKey: _editorKey,
              initEditorConfigHandler: (state) {
                return EditorConfig(
                  maxScale: 8.0,
                  cropRectPadding: const EdgeInsets.all(20.0),
                  hitTestSize: 20.0,
                  cropAspectRatio: CropAspectRatios.ratio1_1,
                );
              },
            ),
          );
        }

        return BasicScaffold(
          title: 'Image Editor',
          child: _editor,
          bottomNavigation: _bottom,
        );
      },
    );
  }
}

class _ImageEditorViewModel {
  final Uint8List? image;
  final bool open;
  final bool loading;
  final void Function(Uint8List) uploadImage;
  final void Function(Uint8List) uploadProfilePicture;
  final VoidCallback startLoading;

  _ImageEditorViewModel({
    required this.image,
    required this.open,
    required this.loading,
    required this.uploadImage,
    required this.uploadProfilePicture,
    required this.startLoading,
  });

  factory _ImageEditorViewModel.fromStore(Store<AppState> store) {
    final imageEditorState = selectImageEditorState(store);

    return _ImageEditorViewModel(
      image: imageEditorState.image,
      open: imageEditorState.open,
      loading: imageEditorState.loading,
      uploadImage: (image) {
        store.dispatch(uploadImageAction(image));
        store.dispatch(CloseEditor());
      },
      uploadProfilePicture: (image) {
        store.dispatch(newProfilePicture(image));
        store.dispatch(CloseEditor());
      },
      startLoading: () => store.dispatch(EditorLoading()),
    );
  }

  @override
  int get hashCode =>
      (open ? 1 : 0) + (image != null ? 1 : 0) + (loading ? 1 : 0);

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
