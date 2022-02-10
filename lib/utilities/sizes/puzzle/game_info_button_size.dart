import '../../constants/screen_sizes.dart';

class GameInfoButtonSize {
  static const _wScale = 140.0;
  static const _hScale = 20.0;

  static ButtonSizes get xs => ButtonSizes(
        _wScale * 0.8,
        _hScale * 0.82,
      );
  static ButtonSizes get sm => ButtonSizes(
        _wScale * 0.95,
        _hScale * 0.88,
      );
  static ButtonSizes get md => ButtonSizes(_wScale, _hScale);
  static ButtonSizes get lg => ButtonSizes(
        _wScale * 1.1,
        _hScale * 1.15,
      );
  static ButtonSizes get xl => ButtonSizes(
        _wScale * 1.25,
        _hScale * 1.4,
      );

  static ButtonSizes getGameInfoButtonSize(double maxWidth) {
    if (maxWidth >= kXL) {
      return GameInfoButtonSize.xl;
    } else if (maxWidth >= kLG) {
      return GameInfoButtonSize.lg;
    } else if (maxWidth >= kMD) {
      return GameInfoButtonSize.md;
    } else if (maxWidth >= kSM) {
      return GameInfoButtonSize.sm;
    } else {
      return GameInfoButtonSize.xs;
    }
  }
}

class ButtonSizes {
  final double width;
  final double height;

  ButtonSizes(this.width, this.height);
}
