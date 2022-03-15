import '../screen_sizes.dart';

class ThemeButtonSizes {
  static _Sizes get xs => _Sizes.multiply(0.65);
  static _Sizes get sm => _Sizes.multiply(0.85);
  static _Sizes get md => _Sizes.multiply(1.0);
  static _Sizes get lg => _Sizes.multiply(1.15);
  static _Sizes get xl => _Sizes.multiply(1.3);

  static _Sizes getThemeButtonSizes(double width) {
    if (width >= ScreenSizes.xl) {
      return ThemeButtonSizes.xl;
    } else if (width >= ScreenSizes.lg) {
      return ThemeButtonSizes.lg;
    } else if (width >= ScreenSizes.md) {
      return ThemeButtonSizes.md;
    } else if (width >= ScreenSizes.sm) {
      return ThemeButtonSizes.sm;
    } else {
      return ThemeButtonSizes.xs;
    }
  }
}

class _Sizes {
  final double size;
  final double icon;
  final double spacing;

  _Sizes({
    required this.size,
    required this.icon,
    required this.spacing,
  });

  factory _Sizes.multiply(double x) {
    return _Sizes(
      size: 30.0 * x,
      icon: 22.5 * x,
      spacing: 6.5 * x,
    );
  }
}
