import 'package:v1/models/server_image.dart';

class ServerImagesState {
  final List<ServerImage> images;
  final bool hasNextPage;
  final String? cursor;
  final bool loading;

  ServerImagesState({
    required this.images,
    required this.hasNextPage,
    required this.loading,
    this.cursor,
  });

  factory ServerImagesState.initialState() {
    return ServerImagesState(
      images: const [],
      hasNextPage: false,
      loading: false,
    );
  }

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
