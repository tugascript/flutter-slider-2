import '../screen_sizes.dart';

class UserRecordSizes {
  static _Sizes getUserRecordSizes(double width) {
    if (width >= ScreenSizes.xl) {
      return _Sizes.getSize(width * 0.55, 1.3);
    } else if (width >= ScreenSizes.lg) {
      return _Sizes.getSize(width * 0.7, 1.15);
    } else if (width >= ScreenSizes.md) {
      return _Sizes.getSize(width * 0.8, 1.0);
    } else if (width >= ScreenSizes.sm) {
      return _Sizes.getSize(width * 0.85, 0.9);
    } else {
      return _Sizes.getSize(width * 0.9, 0.8);
    }
  }
}

class _Sizes {
  final double width;
  final double borderWidth;
  final double borderRadius;
  final double headerSize;
  final double fontSize;

  _Sizes({
    required this.width,
    required this.borderWidth,
    required this.borderRadius,
    required this.headerSize,
    required this.fontSize,
  });

  factory _Sizes.getSize(double width, double x) {
    return _Sizes(
      width: width,
      borderWidth: 1.5 * x,
      borderRadius: 7.5 * x,
      headerSize: 300.0 * x,
      fontSize: 25.0 * x,
    );
  }
}
