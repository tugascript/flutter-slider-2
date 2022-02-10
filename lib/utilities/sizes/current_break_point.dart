import '../constants/screen_sizes.dart';

class CurrentBreakPoint {
  final double width;

  CurrentBreakPoint(this.width);

  bool get xs => width < kSM;
  bool get sm => width >= kSM && width < kMD;
  bool get md => width >= kMD && width < kLG;
  bool get lg => width >= kLG && width < kXL;
  bool get xl => width >= kXL;

  bool get greatSM => width >= kSM;
  bool get greatMD => width >= kMD;
  bool get greatLG => width >= kLG;

  bool get lessSM => width <= kSM;
  bool get lessMD => width <= kMD;
  bool get lessLG => width <= kLG;
  bool get lessXL => width <= kXL;
}
