import 'dart:convert';

import 'package:http/browser_client.dart';

import '../../../utilities/constants.dart';
import '../app_notification.dart';
import '../enums/notification_type_enum.dart';
import 'forms/confirm_login_form.dart';
import 'forms/login_form.dart';
import 'forms/register_form.dart';
import 'responses/auth_response.dart';

class Auth {
  static const _endPoint = 'http://' + kHost + 'auth/';
  static const _headers = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };
  static BrowserClient get _client {
    return BrowserClient()..withCredentials = true;
  }

  static Future<AppNotification> register(RegisterForm form) async {
    final response = await _client.post(
      Uri.parse(_endPoint + 'register'),
      body: jsonEncode(form.generateMap()),
      headers: _headers,
    );

    if (response.statusCode == 201) {
      final data = jsonDecode(response.body);
      return AppNotification(
        type: NotificationTypeEnum.success,
        message: data['message'],
      );
    } else {
      throw Exception('Email or username already in user.');
    }
  }

  static Future<AppNotification> login(LoginForm form) async {
    final response = await _client.post(
      Uri.parse(_endPoint + 'login'),
      body: jsonEncode(form.generateMap()),
      headers: _headers,
    );
    if (response.statusCode == 201) {
      final data = jsonDecode(response.body);
      return AppNotification(
        type: NotificationTypeEnum.success,
        message: data['message'],
      );
    } else {
      throw Exception('Invalid credentials.');
    }
  }

  static Future<AuthResponse> confirmLogin(ConfirmLoginForm form) async {
    final response = await _client.post(
      Uri.parse(_endPoint + 'confirm-login'),
      body: jsonEncode(form.generateMap()),
      headers: _headers,
    );

    if (response.statusCode == 200) {
      return AuthResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Invalid or expired access code.');
    }
  }

  static Future<AppNotification> logout() async {
    final response = await _client.post(Uri.parse(_endPoint + 'logout'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return AppNotification(
        type: NotificationTypeEnum.success,
        message: data['message'],
      );
    } else {
      throw Exception('Something went wrong');
    }
  }

  static Future<AuthResponse> refreshAccess() async {
    final response = await _client.post(
      Uri.parse(_endPoint + 'refresh-access'),
    );

    if (response.statusCode == 200) {
      return AuthResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Invalid refresh token');
    }
  }
}
