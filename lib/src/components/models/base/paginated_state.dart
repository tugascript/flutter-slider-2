abstract class PaginatedState {
  final bool hasNextPage;
  final bool loading;
  final String? cursor;

  const PaginatedState({
    required this.hasNextPage,
    required this.loading,
    this.cursor,
  });

  PaginatedState copyWith({
    bool? hasNextPage,
    bool? loading,
    String? cursor,
  }) {
    return this;
  }
}
