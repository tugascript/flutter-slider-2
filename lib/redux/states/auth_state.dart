import '../../models/local_message.dart';
import '../../models/user.dart';

class AuthState {
  final bool authenticated;
  final bool loading;
  final LocalMessage? message;
  final String? email;
  final User? user;

  AuthState({
    required this.authenticated,
    required this.loading,
    this.message,
    this.user,
    this.email,
  });

  factory AuthState.initialState() {
    return AuthState(
      authenticated: false,
      loading: false,
    );
  }

  AuthState copyWith({
    bool? authenticated,
    bool? loading,
    User? user,
    String? email,
    LocalMessage? message,
  }) {
    return AuthState(
      authenticated: authenticated ?? this.authenticated,
      loading: loading ?? this.loading,
      user: user ?? this.user,
      email: email ?? this.email,
      message: message ?? this.message,
    );
  }
}
