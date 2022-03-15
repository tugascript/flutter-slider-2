import '../screen_sizes.dart';

class UserProfileSizes {
  static _Sizes get xs => _Sizes.multiply(0.8);
  static _Sizes get sm => _Sizes.multiply(0.9);
  static _Sizes get md => _Sizes.multiply(1.0);
  static _Sizes get lg => _Sizes.multiply(1.15);
  static _Sizes get xl => _Sizes.multiply(1.3);

  static _Sizes getUserProfileSizes(double width) {
    if (width >= ScreenSizes.xl) {
      return UserProfileSizes.xl;
    } else if (width >= ScreenSizes.lg) {
      return UserProfileSizes.lg;
    } else if (width >= ScreenSizes.md) {
      return UserProfileSizes.md;
    } else if (width >= ScreenSizes.sm) {
      return UserProfileSizes.sm;
    } else {
      return UserProfileSizes.xs;
    }
  }
}

class _Sizes {
  final double height;
  final double avatar;
  final double spacing;
  final double fontSize;

  _Sizes({
    required this.height,
    required this.avatar,
    required this.spacing,
    required this.fontSize,
  });

  factory _Sizes.multiply(double x) {
    return _Sizes(
      height: 275.0 * x,
      avatar: 175.0 * x,
      spacing: 15.0 * x,
      fontSize: 32.6 * x,
    );
  }
}
