import '../constants/screen_sizes.dart';

class BreakPoints {
  final int xs;
  final int sm;
  final int md;
  final int lg;
  final int xl;

  BreakPoints({
    this.xs = 12,
    this.sm = 12,
    this.md = 12,
    this.lg = 12,
    this.xl = 12,
  });

  int getBreakPointValue(double maxWidth) {
    if (maxWidth >= ScreenSizes.xl) {
      return xl;
    } else if (maxWidth >= ScreenSizes.lg) {
      return lg;
    } else if (maxWidth >= ScreenSizes.md) {
      return md;
    } else if (maxWidth >= ScreenSizes.sm) {
      return sm;
    } else {
      return xs;
    }
  }

  double getWidth(double maxWidth) {
    final double width = maxWidth / 12;
    return width * getBreakPointValue(maxWidth);
  }
}
