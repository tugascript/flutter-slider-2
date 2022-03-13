import '../screen_sizes.dart';

class AuthSnackbarSizes {
  static _Sizes get xs => _Sizes.multiply(0.8);
  static _Sizes get sm => _Sizes.multiply(0.9);
  static _Sizes get md => _Sizes.multiply(1.0);
  static _Sizes get lg => _Sizes.multiply(1.15);
  static _Sizes get xl => _Sizes.multiply(1.3);

  static _Sizes getAuthSnackbarSizes(double width) {
    if (width >= ScreenSizes.xl) {
      return AuthSnackbarSizes.xl;
    } else if (width >= ScreenSizes.lg) {
      return AuthSnackbarSizes.lg;
    } else if (width >= ScreenSizes.md) {
      return AuthSnackbarSizes.md;
    } else if (width >= ScreenSizes.sm) {
      return AuthSnackbarSizes.sm;
    } else {
      return AuthSnackbarSizes.xs;
    }
  }
}

class _Sizes {
  final double padding;
  final double radius;
  final double fontSize;

  _Sizes({
    required this.padding,
    required this.radius,
    required this.fontSize,
  });

  factory _Sizes.multiply(double x) {
    return _Sizes(
      padding: 10.0 * x,
      radius: 5.0 * x,
      fontSize: 20.0 * x,
    );
  }
}
