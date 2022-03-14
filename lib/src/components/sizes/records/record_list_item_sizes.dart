import '../screen_sizes.dart';

class RecordListItemSizes {
  static _Sizes get xs => _Sizes.multiply(0.8);
  static _Sizes get sm => _Sizes.multiply(0.9);
  static _Sizes get md => _Sizes.multiply(1.0);
  static _Sizes get lg => _Sizes.multiply(1.15);
  static _Sizes get xl => _Sizes.multiply(1.3);

  static _Sizes getRecordListItemSizes(double width) {
    if (width >= ScreenSizes.xl) {
      return RecordListItemSizes.xl;
    } else if (width >= ScreenSizes.lg) {
      return RecordListItemSizes.lg;
    } else if (width >= ScreenSizes.md) {
      return RecordListItemSizes.md;
    } else if (width >= ScreenSizes.sm) {
      return RecordListItemSizes.sm;
    } else {
      return RecordListItemSizes.xs;
    }
  }
}

class _Sizes {
  final double avatar;
  final double spacing;
  final double fontSize;
  final double borderWidth;
  final double borderRadius;

  _Sizes({
    required this.avatar,
    required this.spacing,
    required this.fontSize,
    required this.borderWidth,
    required this.borderRadius,
  });

  factory _Sizes.multiply(double x) {
    return _Sizes(
      avatar: 45.0 * x,
      spacing: 5 * x,
      fontSize: 17.5 * x,
      borderWidth: 1.5 * x,
      borderRadius: 7.5 * x,
    );
  }
}
