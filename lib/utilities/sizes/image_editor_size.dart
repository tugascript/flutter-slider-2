import 'screen_sizes.dart';

class ImageEditorSize {
  static double getImageEditorSize(double width) {
    double x = 0.9;

    if (width >= ScreenSizes.xl) {
    } else if (width >= ScreenSizes.lg) {
      return CarouselSizes.lg;
    } else if (width >= ScreenSizes.md) {
      return CarouselSizes.md;
    } else if (width >= ScreenSizes.sm) {
      return CarouselSizes.sm;
    } else {
      return CarouselSizes.xs;
    }
  }
}
