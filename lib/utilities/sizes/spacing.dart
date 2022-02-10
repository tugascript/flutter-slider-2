import '../constants/screen_sizes.dart';

class LocalSpacing {
  static const _scale = 7.0;

  static double get xs => _scale * 0.8;
  static double get sm => _scale * 0.9;
  static double get md => _scale;
  static double get lg => _scale * 1.15;
  static double get xl => _scale * 1.30;

  static double getSpacing(double maxWidth) {
    if (maxWidth >= kXL) {
      return LocalSpacing.xl;
    } else if (maxWidth >= kLG) {
      return LocalSpacing.lg;
    } else if (maxWidth >= kMD) {
      return LocalSpacing.md;
    } else if (maxWidth >= kSM) {
      return LocalSpacing.sm;
    } else {
      return LocalSpacing.xs;
    }
  }
}
