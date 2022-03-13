import '../screen_sizes.dart';

class LocalSpacing {
  static const _scale = 7.0;

  static const Map<ScreenSizesEnum, double> value = {
    ScreenSizesEnum.xs: _scale * 0.8,
    ScreenSizesEnum.sm: _scale * 0.9,
    ScreenSizesEnum.md: _scale,
    ScreenSizesEnum.lg: _scale * 1.15,
    ScreenSizesEnum.xl: _scale * 1.3,
  };

  static double get xs => _scale * 0.8;
  static double get sm => _scale * 0.9;
  static double get md => _scale;
  static double get lg => _scale * 1.15;
  static double get xl => _scale * 1.30;

  static double getSpacing(double maxWidth) {
    if (maxWidth >= ScreenSizes.xl) {
      return LocalSpacing.xl;
    } else if (maxWidth >= ScreenSizes.lg) {
      return LocalSpacing.lg;
    } else if (maxWidth >= ScreenSizes.md) {
      return LocalSpacing.md;
    } else if (maxWidth >= ScreenSizes.sm) {
      return LocalSpacing.sm;
    } else {
      return LocalSpacing.xs;
    }
  }
}
