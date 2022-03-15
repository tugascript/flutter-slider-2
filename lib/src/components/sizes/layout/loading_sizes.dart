import '../screen_sizes.dart';

class LoadingSizes {
  static _Sizes get xs => _Sizes.multiply(0.65);
  static _Sizes get sm => _Sizes.multiply(0.85);
  static _Sizes get md => _Sizes.multiply(1.0);
  static _Sizes get lg => _Sizes.multiply(1.15);
  static _Sizes get xl => _Sizes.multiply(1.3);

  static _Sizes getLoadingSizes(double width) {
    if (width >= ScreenSizes.xl) {
      return LoadingSizes.xl;
    } else if (width >= ScreenSizes.lg) {
      return LoadingSizes.lg;
    } else if (width >= ScreenSizes.md) {
      return LoadingSizes.md;
    } else if (width >= ScreenSizes.sm) {
      return LoadingSizes.sm;
    } else {
      return LoadingSizes.xs;
    }
  }
}

class _Sizes {
  final double size;
  final double stroke;

  _Sizes({
    required this.size,
    required this.stroke,
  });

  factory _Sizes.multiply(double x) {
    return _Sizes(
      size: 100 * x,
      stroke: 3.5 * x,
    );
  }
}
