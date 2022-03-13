import '../screen_sizes.dart';

class TimerButtonSizes {
  static const _wScale = 150.0;
  static const _hScale = 55.0;

  static _Sizes get xs => _Sizes(
        _wScale * 0.8,
        _hScale * 0.85,
      );
  static _Sizes get sm => _Sizes(
        _wScale * 0.95,
        _hScale * 0.9,
      );
  static _Sizes get md => _Sizes(_wScale, _hScale);
  static _Sizes get lg => _Sizes(
        _wScale * 1.25,
        _hScale * 1.15,
      );
  static _Sizes get xl => _Sizes(
        _wScale * 1.5,
        _hScale * 1.35,
      );

  static _Sizes getTimerButtonSize(double maxWidth) {
    if (maxWidth >= ScreenSizes.xl) {
      return TimerButtonSizes.xl;
    } else if (maxWidth >= ScreenSizes.lg) {
      return TimerButtonSizes.lg;
    } else if (maxWidth >= ScreenSizes.md) {
      return TimerButtonSizes.md;
    } else if (maxWidth >= ScreenSizes.sm) {
      return TimerButtonSizes.sm;
    } else {
      return TimerButtonSizes.xs;
    }
  }
}

class _Sizes {
  final double width;
  final double height;

  _Sizes(this.width, this.height);
}
