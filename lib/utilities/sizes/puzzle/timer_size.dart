import '../screen_sizes.dart';

class TimerSize {
  static const _scale = 275.0;

  static double get xs => _scale * 0.8;
  static double get sm => _scale * 0.9;
  static double get md => _scale;
  static double get lg => _scale * 1.25;
  static double get xl => _scale * 1.50;

  static double getTimerSize(double maxWidth) {
    if (maxWidth >= ScreenSizes.xl) {
      return TimerSize.xl;
    } else if (maxWidth >= ScreenSizes.lg) {
      return TimerSize.lg;
    } else if (maxWidth >= ScreenSizes.md) {
      return TimerSize.md;
    } else if (maxWidth >= ScreenSizes.sm) {
      return TimerSize.sm;
    } else {
      return TimerSize.xs;
    }
  }
}
