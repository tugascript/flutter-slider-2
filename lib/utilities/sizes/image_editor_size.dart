import 'screen_sizes.dart';

class ImageEditorSize {
  static const _scale = 550.0;

  static double get xs => _scale * 0.75;
  static double get sm => _scale * 0.9;
  static double get md => _scale;
  static double get lg => _scale * 1.25;
  static double get xl => _scale * 1.5;

  static double getImageEditorSize(double width) {
    if (width >= ScreenSizes.xl) {
      return ImageEditorSize.xl;
    } else if (width >= ScreenSizes.lg) {
      return ImageEditorSize.lg;
    } else if (width >= ScreenSizes.md) {
      return ImageEditorSize.md;
    } else if (width >= ScreenSizes.sm) {
      return ImageEditorSize.sm;
    } else {
      return ImageEditorSize.xs;
    }
  }
}
