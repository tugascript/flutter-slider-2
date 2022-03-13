import '../screen_sizes.dart';

class CarouselSizes {
  static _Sizes get xs => _Sizes.multiply(0.75);
  static _Sizes get sm => _Sizes.multiply(0.875);
  static _Sizes get md => _Sizes.multiply(1.0);
  static _Sizes get lg => _Sizes.multiply(1.15);
  static _Sizes get xl => _Sizes.multiply(1.3);

  static _Sizes getCarouselSizes(double width) {
    if (width >= ScreenSizes.xl) {
      return CarouselSizes.xl;
    } else if (width >= ScreenSizes.lg) {
      return CarouselSizes.lg;
    } else if (width >= ScreenSizes.md) {
      return CarouselSizes.md;
    } else if (width >= ScreenSizes.sm) {
      return CarouselSizes.sm;
    } else {
      return CarouselSizes.xs;
    }
  }
}

class _Sizes {
  final double carouselSize;
  final double iconSize;

  _Sizes({
    required this.carouselSize,
    required this.iconSize,
  });

  factory _Sizes.multiply(double x) {
    return _Sizes(
      carouselSize: 425.0 * x,
      iconSize: 20.0 * x,
    );
  }
}
