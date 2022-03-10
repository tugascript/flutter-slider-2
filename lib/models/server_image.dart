class ServerImage {
  final int id;
  final String url;

  const ServerImage({
    required this.id,
    required this.url,
  });

  factory ServerImage.fromJson(Map<String, dynamic> json) {
    return ServerImage(
      id: json['id']!,
      url: json['url']!,
    );
  }
}
