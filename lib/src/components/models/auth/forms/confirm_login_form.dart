class ConfirmLoginForm {
  final String email;
  String accessCode = '';

  ConfirmLoginForm(this.email);

  Map<String, String> generateMap() {
    return {
      'email': email,
      'accessCode': accessCode,
    };
  }
}
