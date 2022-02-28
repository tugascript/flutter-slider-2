import 'dart:typed_data';

import 'package:extended_image/extended_image.dart';

class ImageEditorState {
  final bool open;
  final bool loading;
  final Uint8List? image;
  final ExtendedImageState? state;

  const ImageEditorState({
    required this.open,
    required this.loading,
    this.image,
    this.state,
  });

  factory ImageEditorState.initialState() {
    return const ImageEditorState(
      open: false,
      loading: false,
    );
  }

  ImageEditorState copyWith({
    bool? open,
    bool? loading,
    Uint8List? image,
    ExtendedImageState? state,
  }) {
    return ImageEditorState(
      open: open ?? this.open,
      loading: loading ?? this.loading,
      image: image ?? this.image,
      state: state ?? this.state,
    );
  }
}
