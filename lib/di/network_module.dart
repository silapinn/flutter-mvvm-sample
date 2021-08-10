import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  Connectivity get connectivity => Connectivity();

  Dio get dio => Dio(BaseOptions(baseUrl: 'http://test.com'))
    ..interceptors.add(LogInterceptor());
}
