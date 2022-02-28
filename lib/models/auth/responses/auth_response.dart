class AuthResponse {
  final String accessToken;

  const AuthResponse(this.accessToken);

  factory AuthResponse.fromJson(Map<String, String> json) {
    return AuthResponse(json['accessToken']!);
  }
}
