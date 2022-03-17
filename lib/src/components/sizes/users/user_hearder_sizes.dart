import '../screen_sizes.dart';

class UserHeaderSizes {
  static _Sizes get xs => _Sizes.multiply(0.8);
  static _Sizes get sm => _Sizes.multiply(0.9);
  static _Sizes get md => _Sizes.multiply(1.0);
  static _Sizes get lg => _Sizes.multiply(1.15);
  static _Sizes get xl => _Sizes.multiply(1.3);

  static _Sizes getUserHeaderSizes(double width) {
    if (width >= ScreenSizes.xl) {
      return UserHeaderSizes.xl;
    } else if (width >= ScreenSizes.lg) {
      return UserHeaderSizes.lg;
    } else if (width >= ScreenSizes.md) {
      return UserHeaderSizes.md;
    } else if (width >= ScreenSizes.sm) {
      return UserHeaderSizes.sm;
    } else {
      return UserHeaderSizes.xs;
    }
  }
}

class _Sizes {
  final double height;
  final double avatar;
  final double spacing;
  final double fontSize;
  final double borderRadius;

  _Sizes({
    required this.height,
    required this.avatar,
    required this.spacing,
    required this.fontSize,
    required this.borderRadius,
  });

  factory _Sizes.multiply(double x) {
    return _Sizes(
      height: 300.0 * x,
      avatar: 175.0 * x,
      spacing: 15.0 * x,
      fontSize: 32.6 * x,
      borderRadius: 7.5 * x,
    );
  }
}
