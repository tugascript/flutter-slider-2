import '../../constants/screen_sizes.dart';

class TimerFontSize {
  static const _scale = 55.0;

  static double get xs => _scale * 0.8;
  static double get sm => _scale * 0.9;
  static double get md => _scale;
  static double get lg => _scale * 1.25;
  static double get xl => _scale * 1.50;

  static double getTimerFontSize(double maxWidth) {
    if (maxWidth >= kXL) {
      return TimerFontSize.xl;
    } else if (maxWidth >= kLG) {
      return TimerFontSize.lg;
    } else if (maxWidth >= kMD) {
      return TimerFontSize.md;
    } else if (maxWidth >= kSM) {
      return TimerFontSize.sm;
    } else {
      return TimerFontSize.xs;
    }
  }
}
