import 'package:v1/models/app_notification.dart';

import '../../models/user.dart';

class AuthState {
  final bool authenticated;
  final bool loading;
  final String? email;
  final User? user;
  final AppNotification? notification;

  AuthState({
    required this.authenticated,
    required this.loading,
    this.notification,
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
    AppNotification? notification,
  }) {
    return AuthState(
      authenticated: authenticated ?? this.authenticated,
      loading: loading ?? this.loading,
      user: user ?? this.user,
      email: email ?? this.email,
      notification: notification ?? this.notification,
    );
  }

  AuthState dismissNotification() {
    return AuthState(
      authenticated: authenticated,
      loading: loading,
      user: user,
      email: email,
    );
  }
}
