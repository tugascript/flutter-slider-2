class AuthResponse {
  final String accessToken;

  const AuthResponse(this.accessToken);

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(json['accessToken']!);
  }
}
