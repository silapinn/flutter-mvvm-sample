import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:sample_app/common/error/generic_error.dart';
import 'package:sample_app/common/error/no_internet_connection.dart';
import 'package:sample_app/common/error/server_error.dart';
import 'package:sample_app/main.dart';

abstract class BaseNetworkRepository {
  Connectivity _connectivity = getIt<Connectivity>();

  /// Helper method that catches an error emitted from a network call.
  Future<T> handle<T>(Future<T> Function() call) async {
    try {
      final T result = await call();
      return result;
    } on DioError catch (e) {
      if (e.type == DioErrorType.other) {
        final connectivityResult = await _connectivity.checkConnectivity();
        if (connectivityResult == ConnectivityResult.none) {
          throw NoInternetConnection();
        } else {
          throw ServerError(e.response?.statusCode, e.message, e.toString());
        }
      }
      throw ServerError(e.response?.statusCode, e.message, e.toString());
    } on Exception catch (e) {
      throw GenericError(e.toString());
    }
  }
}
