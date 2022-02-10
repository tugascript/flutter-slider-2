import '../../constants/screen_sizes.dart';

class PieceFontSize {
  static const _scale = 25.0;

  static double get xs => _scale * 0.7;
  static double get sm => _scale * 0.85;
  static double get md => _scale;
  static double get lg => _scale * 1.25;
  static double get xl => _scale * 1.50;

  static double getPieceFontSize(double maxWidth) {
    if (maxWidth >= kXL) {
      return PieceFontSize.xl;
    } else if (maxWidth >= kLG) {
      return PieceFontSize.lg;
    } else if (maxWidth >= kMD) {
      return PieceFontSize.md;
    } else if (maxWidth >= kSM) {
      return PieceFontSize.sm;
    } else {
      return PieceFontSize.xs;
    }
  }
}
