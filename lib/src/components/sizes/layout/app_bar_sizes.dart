import '../screen_sizes.dart';

class AppBarSizes {
  static _Sizes get xs => _Sizes.multiply(0.75);
  static _Sizes get sm => _Sizes.multiply(0.9);
  static _Sizes get md => _Sizes.multiply(1.0);
  static _Sizes get lg => _Sizes.multiply(1.15);
  static _Sizes get xl => _Sizes.multiply(1.3);

  static _Sizes getAppBarSizes(double width) {
    if (width >= ScreenSizes.xl) {
      return AppBarSizes.xl;
    } else if (width >= ScreenSizes.lg) {
      return AppBarSizes.lg;
    } else if (width >= ScreenSizes.md) {
      return AppBarSizes.md;
    } else if (width >= ScreenSizes.sm) {
      return AppBarSizes.sm;
    } else {
      return AppBarSizes.xs;
    }
  }
}

class _Sizes {
  final double height;
  final double title;
  final double icon;
  final double btnPadding;

  _Sizes({
    required this.height,
    required this.title,
    required this.icon,
    required this.btnPadding,
  });

  factory _Sizes.multiply(double x) {
    return _Sizes(
      height: 65.0 * x,
      title: 25.0 * x,
      icon: 50.0 * x,
      btnPadding: 10.0 * x,
    );
  }
}
