import '../screen_sizes.dart';

class ImgEditorActSizes {
  static _Sizes get xs => _Sizes.multiply(0.8);
  static _Sizes get sm => _Sizes.multiply(0.9);
  static _Sizes get md => _Sizes.multiply(1.0);
  static _Sizes get lg => _Sizes.multiply(1.15);
  static _Sizes get xl => _Sizes.multiply(1.3);

  static _Sizes getImgEditorActSizes(double width) {
    if (width >= ScreenSizes.xl) {
      return ImgEditorActSizes.xl;
    } else if (width >= ScreenSizes.lg) {
      return ImgEditorActSizes.lg;
    } else if (width >= ScreenSizes.md) {
      return ImgEditorActSizes.md;
    } else if (width >= ScreenSizes.sm) {
      return ImgEditorActSizes.sm;
    } else {
      return ImgEditorActSizes.xs;
    }
  }
}

class _Sizes {
  final double width;
  final double height;
  final double borderRadius;
  final double spacing;
  final double iconSize;
  final double borderWidth;

  _Sizes({
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.spacing,
    required this.iconSize,
    required this.borderWidth,
  });

  factory _Sizes.multiply(double x) {
    return _Sizes(
      width: 100.0 * x,
      height: 50 * x,
      borderRadius: 7.5 * x,
      spacing: 10.0 * x,
      iconSize: 30.0 * x,
      borderWidth: 1.0 * x,
    );
  }
}
