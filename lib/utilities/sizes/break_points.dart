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
    if (maxWidth >= kXL) {
      return xl;
    } else if (maxWidth >= kLG) {
      return lg;
    } else if (maxWidth >= kMD) {
      return md;
    } else if (maxWidth >= kSM) {
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
