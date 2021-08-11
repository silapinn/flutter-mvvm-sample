import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_credential.freezed.dart';

@freezed
class LoginCredential with _$LoginCredential {
  const factory LoginCredential(String username, String password) =
      _LoginCredential;
}
