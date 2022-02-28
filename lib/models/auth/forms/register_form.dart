class RegisterForm {
  String username = '';
  String email = '';

  Map<String, String> generateMap() {
    return {
      'username': username,
      'email': email,
    };
  }
}
