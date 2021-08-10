import 'package:injectable/injectable.dart';
import 'package:sample_app/data/model/login_response.dart';
import 'package:sample_app/domain/model/user.dart';

@injectable
class UserMapper {
  User? map(LoginResponse loginResponse) {
    final id = loginResponse.id ?? null;
    if (id == null) return null;
    final firstName = loginResponse.firstName ?? "";
    final lastName = loginResponse.lastName ?? "";
    final fullName = '$firstName $lastName';
    final mobileNumber = loginResponse.mobileNumber ?? "";

    return User(id, firstName, lastName, fullName, mobileNumber);
  }
}
