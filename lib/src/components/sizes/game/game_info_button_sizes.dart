import '../screen_sizes.dart';

class GameInfoButtonSizes {
  static const _wScale = 140.0;
  static const _hScale = 20.0;

  static _Sizes get xs => _Sizes(
        _wScale * 0.8,
        _hScale * 0.82,
      );
  static _Sizes get sm => _Sizes(
        _wScale * 0.95,
        _hScale * 0.88,
      );
  static _Sizes get md => _Sizes(_wScale, _hScale);
  static _Sizes get lg => _Sizes(
        _wScale * 1.1,
        _hScale * 1.15,
      );
  static _Sizes get xl => _Sizes(
        _wScale * 1.25,
        _hScale * 1.4,
      );

  static _Sizes getGameInfoButtonSize(double maxWidth) {
    if (maxWidth >= ScreenSizes.xl) {
      return GameInfoButtonSizes.xl;
    } else if (maxWidth >= ScreenSizes.lg) {
      return GameInfoButtonSizes.lg;
    } else if (maxWidth >= ScreenSizes.md) {
      return GameInfoButtonSizes.md;
    } else if (maxWidth >= ScreenSizes.sm) {
      return GameInfoButtonSizes.sm;
    } else {
      return GameInfoButtonSizes.xs;
    }
  }
}

class _Sizes {
  final double width;
  final double height;

  _Sizes(this.width, this.height);
}
