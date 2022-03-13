import '../screen_sizes.dart';

class NavFormSizes {
  static const _fontSizeScale = 20.0;

  static _Sizes getNavFormSizes(double width) {
    if (width >= ScreenSizes.xl) {
      return _Sizes(
        width: width * 0.3,
        fontSize: _fontSizeScale * 1.3,
      );
    } else if (width >= ScreenSizes.lg) {
      return _Sizes(
        width: width * 0.4,
        fontSize: _fontSizeScale * 1.15,
      );
    } else if (width >= ScreenSizes.md) {
      return _Sizes(
        width: width * 0.55,
        fontSize: _fontSizeScale,
      );
    } else if (width >= ScreenSizes.sm) {
      return _Sizes(
        width: width * 0.75,
        fontSize: _fontSizeScale * 0.9,
      );
    } else {
      return _Sizes(
        width: width * 0.8,
        fontSize: _fontSizeScale * 0.8,
      );
    }
  }
}

class _Sizes {
  final double width;
  final double fontSize;

  _Sizes({
    required this.width,
    required this.fontSize,
  });
}
