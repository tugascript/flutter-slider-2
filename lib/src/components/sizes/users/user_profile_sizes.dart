import '../screen_sizes.dart';

class UserProfileSizes {
  static _Sizes getUserProfileSizes(double width) {
    if (width >= ScreenSizes.xl) {
      return _Sizes.getSize(width * 0.6, 1.3);
    } else if (width >= ScreenSizes.lg) {
      return _Sizes.getSize(width * 0.7, 1.15);
    } else if (width >= ScreenSizes.md) {
      return _Sizes.getSize(width * 0.85, 1.0);
    } else if (width >= ScreenSizes.sm) {
      return _Sizes.getSize(width * 0.9, 0.9);
    } else {
      return _Sizes.getSize(width * 0.95, 0.8);
    }
  }
}

class _Sizes {
  final double width;
  final double borderRadius;
  final double fontSize;

  _Sizes({
    required this.width,
    required this.borderRadius,
    required this.fontSize,
  });

  factory _Sizes.getSize(double width, double x) {
    return _Sizes(
      width: width,
      borderRadius: 7.5 * x,
      fontSize: 25.0 * x,
    );
  }
}
