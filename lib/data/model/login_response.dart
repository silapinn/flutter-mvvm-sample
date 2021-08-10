import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final String? id;
  final String? firstName;
  final String? lastName;
  final String? mobileNumber;

  LoginResponse(this.id, this.firstName, this.lastName, this.mobileNumber);

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
