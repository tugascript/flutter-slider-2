import 'base/paginated_state.dart';
import 'game_record.dart';

class RecordsList implements PaginatedState {
  final int level;
  final List<GameRecord> records;
  @override
  final bool hasNextPage;
  @override
  final String? cursor;
  @override
  final bool loading;

  const RecordsList({
    required this.level,
    required this.records,
    required this.hasNextPage,
    required this.loading,
    this.cursor,
  });

  @override
  RecordsList copyWith({
    int? level,
    List<GameRecord>? records,
    bool? hasNextPage,
    String? cursor,
    bool? loading,
  }) {
    return RecordsList(
      level: level ?? this.level,
      records: records ?? this.records,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      cursor: cursor ?? this.cursor,
      loading: loading ?? this.loading,
    );
  }
}
