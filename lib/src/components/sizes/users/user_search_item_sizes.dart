import '../screen_sizes.dart';

class UserSearchItemSizes {
  static _Sizes get xs => _Sizes.multiply(0.8);
  static _Sizes get sm => _Sizes.multiply(0.9);
  static _Sizes get md => _Sizes.multiply(1.0);
  static _Sizes get lg => _Sizes.multiply(1.15);
  static _Sizes get xl => _Sizes.multiply(1.3);

  static _Sizes getUserSearchItemSizes(double width) {
    if (width >= ScreenSizes.xl) {
      return UserSearchItemSizes.xl;
    } else if (width >= ScreenSizes.lg) {
      return UserSearchItemSizes.lg;
    } else if (width >= ScreenSizes.md) {
      return UserSearchItemSizes.md;
    } else if (width >= ScreenSizes.sm) {
      return UserSearchItemSizes.sm;
    } else {
      return UserSearchItemSizes.xs;
    }
  }
}

class _Sizes {
  final double avatar;
  final double fontSize;
  final double borderWidth;

  _Sizes({
    required this.avatar,
    required this.fontSize,
    required this.borderWidth,
  });

  factory _Sizes.multiply(double x) {
    return _Sizes(
      avatar: 65.0 * x,
      fontSize: 25.0 * x,
      borderWidth: 1.5 * x,
    );
  }
}
