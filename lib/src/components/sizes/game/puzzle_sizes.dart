import '../screen_sizes.dart';

class PuzzleSizes {
  static _Sizes get xs => _Sizes.multiply(0.75);
  static _Sizes get sm => _Sizes.multiply(0.9);
  static _Sizes get md => _Sizes.multiply(1.0);
  static _Sizes get lg => _Sizes.multiply(1.15);
  static _Sizes get xl => _Sizes.multiply(1.3);

  static _Sizes getPuzzleSizes(double width) {
    if (width >= ScreenSizes.xl) {
      return PuzzleSizes.xl;
    } else if (width >= ScreenSizes.lg) {
      return PuzzleSizes.lg;
    } else if (width >= ScreenSizes.md) {
      return PuzzleSizes.md;
    } else if (width >= ScreenSizes.sm) {
      return PuzzleSizes.sm;
    } else {
      return PuzzleSizes.xs;
    }
  }
}

class _Sizes {
  final double puzzleSize;
  final double pieceRadius;
  final double pieceMargin;
  final double pieceFontSize;

  _Sizes({
    required this.puzzleSize,
    required this.pieceRadius,
    required this.pieceMargin,
    required this.pieceFontSize,
  });

  static const _puzzleSize = 415.0;
  static const _pieceRadius = 10.0;
  static const _pieceMargin = 2.5;
  static const _pieceFontSize = 25.0;

  factory _Sizes.multiply(double x) {
    return _Sizes(
      puzzleSize: _puzzleSize * x,
      pieceRadius: _pieceRadius * x,
      pieceMargin: _pieceMargin * x,
      pieceFontSize: _pieceFontSize * x,
    );
  }
}
