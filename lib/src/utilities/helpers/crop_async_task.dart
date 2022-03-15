import 'dart:typed_data';

import 'package:image/image.dart' as img;

import '../arguments/crop_arguments.dart';

void cropImage(CropArguments arguments) {
  img.Image? src = img.decodeImage(arguments.image);

  if (src == null) throw Exception('Image is invalid');

  src = img.copyCrop(
    src,
    arguments.cropRect.left.toInt(),
    arguments.cropRect.top.toInt(),
    arguments.cropRect.width.toInt(),
    arguments.cropRect.height.toInt(),
  );

  final imgBytes = Uint8List.fromList(
    img.encodeJpg(src),
  );

  arguments.uploader(imgBytes);
}
