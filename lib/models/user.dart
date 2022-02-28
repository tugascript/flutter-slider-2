class User {
  final int id;
  final String username;
  final String? picture;

  const User({
    required this.id,
    required this.username,
    this.picture,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id']!,
      username: json['username']!,
      picture: json['picture'],
    );
  }

  User changePicture(String pic) {
    return User(
      id: id,
      username: username,
      picture: pic,
    );
  }
}
