import 'package:injectable/injectable.dart';
import 'package:sample_app/common/error/no_internet_connection.dart';
import 'package:sample_app/common/error/server_error.dart';
import 'package:sample_app/data/repository/login_repository.dart';
import 'package:sample_app/domain/model/login_credential.dart';
import 'package:sample_app/domain/model/user.dart';
import 'package:sample_app/domain/usecase/single_use_case_result.dart';

abstract class LoginUseCase {
  Future<SingleUseCaseResult<User>> execute(LoginCredential credential);
}

@Injectable(as: LoginUseCase)
class LoginUseCaseImpl extends LoginUseCase {
  final LoginRepository _loginRepository;

  LoginUseCaseImpl(this._loginRepository);

  @override
  Future<SingleUseCaseResult<User>> execute(LoginCredential credential) async {
    try {
      final user = await _loginRepository.login(credential);
      if (user == null) {
        return SingleUseCaseResult.genericError(Exception());
      } else {
        return SingleUseCaseResult.success(user);
      }
    } on NoInternetConnection catch (_) {
      return SingleUseCaseResult.noInternetConnection();
    } on ServerError catch (e) {
      return SingleUseCaseResult.serverError(e);
    } on Exception catch (e) {
      return SingleUseCaseResult.genericError(e);
    }
  }
}
