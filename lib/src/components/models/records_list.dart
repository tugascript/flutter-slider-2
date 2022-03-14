import 'game_record.dart';

class RecordsList {
  final int level;
  final List<GameRecord> records;
  final bool hasNextPage;
  final String? cursor;

  const RecordsList({
    required this.level,
    required this.records,
    required this.hasNextPage,
    this.cursor,
  });

  RecordsList copyWith({
    int? level,
    List<GameRecord>? records,
    bool? hasNextPage,
    String? cursor,
  }) {
    return RecordsList(
      level: level ?? this.level,
      records: records ?? this.records,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      cursor: cursor ?? this.cursor,
    );
  }
}
