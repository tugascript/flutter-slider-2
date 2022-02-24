import 'screen_sizes.dart';

class TimerSizes {
  static _Sizes get xs => _Sizes.multiply(0.8);
  static _Sizes get sm => _Sizes.multiply(0.9);
  static _Sizes get md => _Sizes.multiply(1.0);
  static _Sizes get lg => _Sizes.multiply(1.25);
  static _Sizes get xl => _Sizes.multiply(1.5);

  static _Sizes getTimerSizes(double width) {
    if (width >= ScreenSizes.xl) {
      return TimerSizes.xl;
    } else if (width >= ScreenSizes.lg) {
      return TimerSizes.lg;
    } else if (width >= ScreenSizes.md) {
      return TimerSizes.md;
    } else if (width >= ScreenSizes.sm) {
      return TimerSizes.sm;
    } else {
      return TimerSizes.xs;
    }
  }
}

class _Sizes {
  final double size;
  final double fontSize;
  final double strokeWidth;
  final double spacing;

  _Sizes({
    required this.size,
    required this.fontSize,
    required this.strokeWidth,
    required this.spacing,
  });

  factory _Sizes.multiply(double x) {
    return _Sizes(
      size: x * 240.0,
      fontSize: x * 55.0,
      strokeWidth: x * 12.5,
      spacing: x * 6.0,
    );
  }
}
