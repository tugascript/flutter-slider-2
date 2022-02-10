import 'package:v1/utilities/constants/screen_sizes.dart';

class PuzzleSize {
  static const _scale = 415.0;

  static double get xs => _scale * 0.8;
  static double get sm => _scale * 0.9;
  static double get md => _scale;
  static double get lg => _scale * 1.25;
  static double get xl => _scale * 1.50;

  static double getPuzzleSize(double maxWidth) {
    if (maxWidth >= kXL) {
      return PuzzleSize.xl;
    } else if (maxWidth >= kLG) {
      return PuzzleSize.lg;
    } else if (maxWidth >= kMD) {
      return PuzzleSize.md;
    } else if (maxWidth >= kSM) {
      return PuzzleSize.sm;
    } else if (maxWidth >= PuzzleSize.xs) {
      return PuzzleSize.xs;
    }

    return maxWidth * 0.9;
  }
}
