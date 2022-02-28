import 'dart:typed_data';

class ImageEditorState {
  final bool open;
  final bool loading;
  final Uint8List? image;

  const ImageEditorState({
    required this.open,
    required this.loading,
    this.image,
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
  }) {
    return ImageEditorState(
      open: open ?? this.open,
      loading: loading ?? this.loading,
      image: image ?? this.image,
    );
  }
}
