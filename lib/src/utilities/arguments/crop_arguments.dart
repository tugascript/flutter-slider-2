import 'dart:typed_data';
import 'dart:ui';

class CropArguments {
  final Rect cropRect;
  final Uint8List image;
  final void Function(Uint8List) uploader;

  const CropArguments({
    required this.cropRect,
    required this.image,
    required this.uploader,
  });
}
