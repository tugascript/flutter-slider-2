import '../../constants/screen_sizes.dart';

class PieceMargin {
  static const _scale = 2.5;

  static double get xs => _scale * 0.6;
  static double get sm => _scale * 0.8;
  static double get md => _scale;
  static double get lg => _scale * 1.2;
  static double get xl => _scale * 1.4;

  static double getPieceMargin(double maxWidth) {
    if (maxWidth >= kXL) {
      return PieceMargin.xl;
    } else if (maxWidth >= kLG) {
      return PieceMargin.lg;
    } else if (maxWidth >= kMD) {
      return PieceMargin.md;
    } else if (maxWidth >= kSM) {
      return PieceMargin.sm;
    } else {
      return PieceMargin.xs;
    }
  }
}
