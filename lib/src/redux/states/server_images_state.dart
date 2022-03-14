import '../../components/models/base/paginated_state.dart';
import '../../components/models/server_image.dart';

class ServerImagesState implements PaginatedState {
  final List<ServerImage> images;
  @override
  final bool hasNextPage;
  @override
  final bool loading;
  @override
  final String? cursor;

  const ServerImagesState({
    required this.images,
    required this.hasNextPage,
    required this.loading,
    this.cursor,
  });

  factory ServerImagesState.initialState() {
    return const ServerImagesState(
      images: [],
      hasNextPage: false,
      loading: false,
    );
  }

  @override
  ServerImagesState copyWith({
    List<ServerImage>? images,
    bool? hasNextPage,
    String? cursor,
    bool? loading,
  }) {
    return ServerImagesState(
      images: images ?? this.images,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      cursor: cursor ?? this.cursor,
      loading: loading ?? this.loading,
    );
  }
}
