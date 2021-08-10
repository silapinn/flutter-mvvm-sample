import 'package:injectable/injectable.dart';
import 'package:sample_app/common/base/base_network_repository.dart';
import 'package:sample_app/data/model/login_request.dart';
import 'package:sample_app/data/model/login_response.dart';
import 'package:sample_app/data/service/login_service.dart';
import 'package:sample_app/domain/mapper/user_mapper.dart';
import 'package:sample_app/domain/model/login_credential.dart';
import 'package:sample_app/domain/model/user.dart';

abstract class LoginRepository extends BaseNetworkRepository {
  Future<User?> login(LoginCredential credential);
}

@Singleton(as: LoginRepository)
class LoginRepositoryImpl extends LoginRepository {
  final LoginService _loginService;
  final UserMapper _userMapper;

  LoginRepositoryImpl(this._loginService, this._userMapper);

  @override
  Future<User?> login(LoginCredential credential) async {
    final loginRequest = LoginRequest(credential.username, credential.password);
    final LoginResponse loginResponse = await handle(() {
      /// Use fakeLogin to simulate success case;
      return _fakeLogin(loginRequest);

      /// Use login to call non-existed endpoint to simulate actual api call or error case;
      // return _loginService.login(loginRequest);
    });
    return _userMapper.map(loginResponse);
  }

  Future<LoginResponse> _fakeLogin(LoginRequest request) async {
    await Future.delayed(Duration(seconds: 2));
    return LoginResponse("1234", "John", "wick", "199");
  }
}
