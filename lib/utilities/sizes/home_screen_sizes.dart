import 'screen_sizes.dart';

class HomeScreenSizes {
  static _Sizes get xs => _Sizes.multiply(0.75);
  static _Sizes get sm => _Sizes.multiply(0.9);
  static _Sizes get md => _Sizes.multiply(1.0);
  static _Sizes get lg => _Sizes.multiply(1.125);
  static _Sizes get xl => _Sizes.multiply(1.25);

  static _Sizes getHomeScreenSizes(double width) {
    if (width >= ScreenSizes.xl) {
      return HomeScreenSizes.xl;
    } else if (width >= ScreenSizes.lg) {
      return HomeScreenSizes.lg;
    } else if (width >= ScreenSizes.md) {
      return HomeScreenSizes.md;
    } else if (width >= ScreenSizes.sm) {
      return HomeScreenSizes.sm;
    } else {
      return HomeScreenSizes.xs;
    }
  }
}

class _Sizes {
  final double buttonWidth;
  final double buttonHeight;
  final double marginBottom;
  final double inputSize;
  final double inputMargin;
  final double fontSize;
  final double borderRadius;
  final double borderWidth;

  _Sizes({
    required this.buttonWidth,
    required this.buttonHeight,
    required this.marginBottom,
    required this.inputSize,
    required this.inputMargin,
    required this.fontSize,
    required this.borderRadius,
    required this.borderWidth,
  });

  factory _Sizes.multiply(double x) {
    return _Sizes(
      buttonWidth: x * 400.0,
      buttonHeight: x * 50.0,
      marginBottom: x * 12.5,
      inputSize: x * 45.0,
      inputMargin: x * 7.0,
      fontSize: x * 25.0,
      borderRadius: x * 10,
      borderWidth: x * 1.5,
    );
  }
}
