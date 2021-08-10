import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_app/common/error/server_error.dart';

part 'single_use_case_result.freezed.dart';

@freezed
class SingleUseCaseResult<T extends Object> with _$SingleUseCaseResult<T> {
  const factory SingleUseCaseResult.success(T data) = _$Success;

  const factory SingleUseCaseResult.noInternetConnection() =
      _$NoInternetConnection;

  const factory SingleUseCaseResult.serverError(ServerError error) =
      _$ServerError;

  const factory SingleUseCaseResult.genericError(Exception exception) =
      _$GenericError;
}
