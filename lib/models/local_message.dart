class LocalMessage {
  final String id;
  final String message;

  const LocalMessage({
    required this.id,
    required this.message,
  });

  factory LocalMessage.fromJson(Map<String, dynamic> json) {
    return LocalMessage(
      id: json['id']!,
      message: json['message']!,
    );
  }
}
