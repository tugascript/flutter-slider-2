import 'screen_sizes.dart';

class FontSize {
  static const _scale = 16.0;

  static double get xs => _scale * 0.8;
  static double get sm => _scale * 0.9;
  static double get md => _scale;
  static double get lg => _scale * 1.15;
  static double get xl => _scale * 1.30;

  static double getFontSize(double maxWidth) {
    if (maxWidth >= ScreenSizes.xl) {
      return FontSize.xl;
    } else if (maxWidth >= ScreenSizes.lg) {
      return FontSize.lg;
    } else if (maxWidth >= ScreenSizes.md) {
      return FontSize.md;
    } else if (maxWidth >= ScreenSizes.sm) {
      return FontSize.sm;
    } else {
      return FontSize.xs;
    }
  }
}
