import 'screen_sizes.dart';

class BreakPoint {
  final double width;

  BreakPoint(this.width);

  bool get greatSM => width >= ScreenSizes.sm;
  bool get greatMD => width >= ScreenSizes.md;
  bool get greatLG => width >= ScreenSizes.lg;
  bool get greatXL => width >= ScreenSizes.xl;

  ScreenSizesEnum get screenSize {
    if (greatXL) {
      return ScreenSizesEnum.xl;
    } else if (greatLG) {
      return ScreenSizesEnum.lg;
    } else if (greatMD) {
      return ScreenSizesEnum.md;
    } else if (greatSM) {
      return ScreenSizesEnum.sm;
    } else {
      return ScreenSizesEnum.xs;
    }
  }
}
