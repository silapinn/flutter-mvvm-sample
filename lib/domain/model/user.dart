import 'package:flutter/material.dart';

@immutable
class User {
  final String id;
  final String firstName;
  final String lastName;
  final String fullName;
  final String mobileNumber;

  User(
      this.id, this.firstName, this.lastName, this.fullName, this.mobileNumber);
}
