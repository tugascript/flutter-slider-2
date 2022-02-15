import '../screen_sizes.dart';

class PuzzleSize {
  static const _scale = 415.0;

  static double get xs => _scale * 0.8;
  static double get sm => _scale * 0.9;
  static double get md => _scale;
  static double get lg => _scale * 1.25;
  static double get xl => _scale * 1.50;

  static double getPuzzleSize(double maxWidth) {
    if (maxWidth >= ScreenSizes.xl) {
      return PuzzleSize.xl;
    } else if (maxWidth >= ScreenSizes.lg) {
      return PuzzleSize.lg;
    } else if (maxWidth >= ScreenSizes.md) {
      return PuzzleSize.md;
    } else if (maxWidth >= ScreenSizes.sm) {
      return PuzzleSize.sm;
    } else {
      return PuzzleSize.xs;
    }
  }
}
