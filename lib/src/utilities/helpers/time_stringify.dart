class TimeStringify {
  static String getTimeString(int time) {
    final stringArr = <String>[];

    final hours = (time / 3600).floor();

    if (hours > 0) stringArr.add(_intToTimeString(hours));

    final minutes = ((time / 60) - hours * 3600).floor();
    stringArr.add(_intToTimeString(minutes));
    final seconds = time - minutes * 60;
    stringArr.add(_intToTimeString(seconds));

    return stringArr.join(':');
  }

  static String _intToTimeString(int time) {
    if (time > 9) return time.toString();
    return '0$time';
  }
}
