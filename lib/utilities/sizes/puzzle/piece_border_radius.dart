import '../screen_sizes.dart';

class PieceBorderRadius {
  static const _scale = 10.0;

  static double get xs => _scale * 0.5;
  static double get sm => _scale * 0.75;
  static double get md => _scale;
  static double get lg => _scale * 1.25;
  static double get xl => _scale * 1.5;

  static double getPieceBorderRadius(double maxWidth) {
    if (maxWidth >= ScreenSizes.xl) {
      return PieceBorderRadius.xl;
    } else if (maxWidth >= ScreenSizes.lg) {
      return PieceBorderRadius.lg;
    } else if (maxWidth >= ScreenSizes.md) {
      return PieceBorderRadius.md;
    } else if (maxWidth >= ScreenSizes.sm) {
      return PieceBorderRadius.sm;
    } else {
      return PieceBorderRadius.xs;
    }
  }
}
