import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../utilities/constants.dart';
import '../local_message.dart';
import 'forms/confirm_login_form.dart';
import 'forms/login_form.dart';
import 'forms/register_form.dart';
import 'responses/auth_response.dart';

class Auth {
  static const _endPoint = 'http://' + kHost + 'auth/';
  static const _headers = <String, String>{
    'Content-Type': 'application/json',
  };

  static Future<LocalMessage> register(RegisterForm form) async {
    final response = await http.post(
      Uri.parse(_endPoint + 'register'),
      headers: _headers,
      body: jsonEncode(form.generateMap()),
    );

    if (response.statusCode == 201) {
      return LocalMessage.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Email or username already in user.');
    }
  }

  static Future<LocalMessage> login(LoginForm form) async {
    final response = await http.post(
      Uri.parse(_endPoint + 'login'),
      headers: _headers,
      body: jsonEncode(form.generateMap()),
    );
    if (response.statusCode == 201) {
      return LocalMessage.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Invalid credentials.');
    }
  }

  static Future<AuthResponse> confirmLogin(ConfirmLoginForm form) async {
    final response = await http.post(
      Uri.parse(_endPoint + 'confirm-login'),
      headers: _headers,
      body: jsonEncode(form.generateMap()),
    );

    if (response.statusCode == 200) {
      return AuthResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Invalid or expired access code.');
    }
  }

  static Future<LocalMessage> logout() async {
    final response = await http.post(Uri.parse(_endPoint + 'logout'));

    if (response.statusCode == 200) {
      return LocalMessage.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Something went wrong');
    }
  }

  static Future<AuthResponse> refreshAccess() async {
    final response = await http.post(Uri.parse(_endPoint + 'refresh-access'));

    if (response.statusCode == 200) {
      return AuthResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Invalid refresh token');
    }
  }
}
