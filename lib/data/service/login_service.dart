import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:sample_app/data/model/login_request.dart';
import 'package:sample_app/data/model/login_response.dart';

part 'login_service.g.dart';

@singleton
@RestApi()
abstract class LoginService {
  @factoryMethod
  factory LoginService(Dio dio) => _LoginService(dio);

  @POST("/login")
  Future<LoginResponse> login(LoginRequest request);
}
