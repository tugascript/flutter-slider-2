import '../../constants/screen_sizes.dart';

class TimerButtonSize {
  static const _wScale = 150.0;
  static const _hScale = 55.0;

  static ButtonSizes get xs => ButtonSizes(
        _wScale * 0.8,
        _hScale * 0.85,
      );
  static ButtonSizes get sm => ButtonSizes(
        _wScale * 0.95,
        _hScale * 0.9,
      );
  static ButtonSizes get md => ButtonSizes(_wScale, _hScale);
  static ButtonSizes get lg => ButtonSizes(
        _wScale * 1.25,
        _hScale * 1.15,
      );
  static ButtonSizes get xl => ButtonSizes(
        _wScale * 1.5,
        _hScale * 1.35,
      );

  static ButtonSizes getTimerButtonSize(double maxWidth) {
    if (maxWidth >= kXL) {
      return TimerButtonSize.xl;
    } else if (maxWidth >= kLG) {
      return TimerButtonSize.lg;
    } else if (maxWidth >= kMD) {
      return TimerButtonSize.md;
    } else if (maxWidth >= kSM) {
      return TimerButtonSize.sm;
    } else {
      return TimerButtonSize.xs;
    }
  }
}

class ButtonSizes {
  final double width;
  final double height;

  ButtonSizes(this.width, this.height);
}
