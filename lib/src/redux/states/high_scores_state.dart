import '../../components/models/game_record.dart';
import '../../components/models/records_list.dart';

class HighScoresState extends RecordsList {
  final GameRecord? currentRecord;
  final int? currentRank;

  const HighScoresState({
    required int level,
    required List<GameRecord> records,
    required bool hasNextPage,
    required bool loading,
    String? cursor,
    this.currentRecord,
    this.currentRank,
  }) : super(
          level: level,
          records: records,
          hasNextPage: hasNextPage,
          loading: loading,
          cursor: cursor,
        );

  factory HighScoresState.initialState() {
    return const HighScoresState(
      level: 1,
      records: [],
      hasNextPage: false,
      loading: false,
    );
  }

  @override
  HighScoresState copyWith({
    int? level,
    List<GameRecord>? records,
    bool? hasNextPage,
    String? cursor,
    bool? loading,
    GameRecord? currentRecord,
    int? currentRank,
  }) {
    return HighScoresState(
      level: level ?? this.level,
      records: records ?? this.records,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      cursor: cursor ?? this.cursor,
      loading: loading ?? this.loading,
      currentRecord: currentRecord ?? this.currentRecord,
      currentRank: currentRank ?? this.currentRank,
    );
  }
}
