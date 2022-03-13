import '../screen_sizes.dart';

class NavBtnSizes {
  static _Sizes get xs => _Sizes.multiply(0.8);
  static _Sizes get sm => _Sizes.multiply(0.9);
  static _Sizes get md => _Sizes.multiply(1.0);
  static _Sizes get lg => _Sizes.multiply(1.15);
  static _Sizes get xl => _Sizes.multiply(1.3);

  static _Sizes getNavBtnSizes(double width) {
    if (width >= ScreenSizes.xl) {
      return NavBtnSizes.xl;
    } else if (width >= ScreenSizes.lg) {
      return NavBtnSizes.lg;
    } else if (width >= ScreenSizes.md) {
      return NavBtnSizes.md;
    } else if (width >= ScreenSizes.sm) {
      return NavBtnSizes.sm;
    } else {
      return NavBtnSizes.xs;
    }
  }
}

class _Sizes {
  final double width;
  final double borderRadius;
  final double padding;
  final double fontSize;
  final double borderWidth;

  _Sizes({
    required this.width,
    required this.borderRadius,
    required this.padding,
    required this.fontSize,
    required this.borderWidth,
  });

  factory _Sizes.multiply(double x) {
    return _Sizes(
      width: 100.0 * x,
      borderRadius: 7.5 * x,
      padding: 10.0 * x,
      fontSize: 20.0 * x,
      borderWidth: 1.0 * x,
    );
  }
}
