class User {
  final int id;
  final String username;
  final int? maxLevel;
  final String? picture;

  const User({
    required this.id,
    required this.username,
    this.maxLevel,
    this.picture,
  });

  User copyWith({
    int? id,
    int? maxLevel,
    String? username,
    String? picture,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      maxLevel: maxLevel ?? this.maxLevel,
      picture: picture ?? this.picture,
    );
  }
}
