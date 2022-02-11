import '../constants/screen_sizes.dart';

class CurrentBreakPoint {
  final double width;

  CurrentBreakPoint(this.width);

  bool get xs => width < ScreenSizes.sm;
  bool get sm => width >= ScreenSizes.sm && width < ScreenSizes.md;
  bool get md => width >= ScreenSizes.md && width < ScreenSizes.lg;
  bool get lg => width >= ScreenSizes.lg && width < ScreenSizes.xl;
  bool get xl => width >= ScreenSizes.xl;

  bool get greatSM => width >= ScreenSizes.sm;
  bool get greatMD => width >= ScreenSizes.md;
  bool get greatLG => width >= ScreenSizes.lg;

  bool get lessSM => width <= ScreenSizes.sm;
  bool get lessMD => width <= ScreenSizes.md;
  bool get lessLG => width <= ScreenSizes.lg;
  bool get lessXL => width <= ScreenSizes.xl;
}
