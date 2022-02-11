import '../../constants/screen_sizes.dart';

class TimerWidth {
  static const _scale = 13.5;

  static double get xs => _scale * 0.75;
  static double get sm => _scale * 0.825;
  static double get md => _scale;
  static double get lg => _scale * 1.125;
  static double get xl => _scale * 1.25;

  static double getTimerWidth(double maxWidth) {
    if (maxWidth >= kXL) {
      return TimerWidth.xl;
    } else if (maxWidth >= kLG) {
      return TimerWidth.lg;
    } else if (maxWidth >= kMD) {
      return TimerWidth.md;
    } else if (maxWidth >= kSM) {
      return TimerWidth.sm;
    } else {
      return TimerWidth.xs;
    }
  }
}
