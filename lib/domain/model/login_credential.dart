import 'package:flutter/material.dart';

@immutable
class LoginCredential {
  final String username;
  final String password;

  LoginCredential(this.username, this.password);
}
