class ServerImage {
  final int id;
  final String url;

  const ServerImage({
    required this.id,
    required this.url,
  });

  ServerImage copyWith({
    int? id,
    String? url,
  }) {
    return ServerImage(
      id: id ?? this.id,
      url: url ?? this.url,
    );
  }
}
