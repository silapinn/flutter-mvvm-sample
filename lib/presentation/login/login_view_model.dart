import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';
import 'package:sample_app/common/base/base_view_model.dart';
import 'package:sample_app/common/delegate/error_handling_view_model_delegate.dart';
import 'package:sample_app/common/delegate/loading_view_model_delegate.dart';
import 'package:sample_app/common/error/server_error.dart';
import 'package:sample_app/domain/model/login_credential.dart';
import 'package:sample_app/domain/model/user.dart';
import 'package:sample_app/domain/usecase/login_use_case.dart';

@injectable
class LoginViewModel extends BaseViewModel
    with LoadingViewModelDelegate, ErrorHandlingViewModelDelegate {
  final LoginUseCase _loginUseCase;
  final BehaviorSubject<String> _username = BehaviorSubject.seeded("");
  final BehaviorSubject<String> _password = BehaviorSubject.seeded("");
  final PublishSubject<Object?> _navigateToHome = PublishSubject();

  Stream<String> get username => _username.stream;

  Stream<String> get password => _password.stream;

  Stream<Object?> get navigateToHome => _navigateToHome;

  LoginViewModel(this._loginUseCase);

  void onLoginButtonClicked(String username, String password) async {
    if (username.isEmpty) {
      showErrorMessage("Username should not be empty");
      return;
    }
    if (password.isEmpty) {
      showErrorMessage("Password should not be empty");
      return;
    }

    showLoading();
    final result =
        await _loginUseCase.execute(LoginCredential(username, password));
    hideLoading();

    result.when(success: (User user) {
      _navigateToHome.add(null);
    }, noInternetConnection: () {
      showErrorMessage('No internet connection');
    }, serverError: (ServerError error) {
      showErrorMessage(error.message);
    }, genericError: (Exception exception) {
      showErrorMessage(exception.toString());
    });
  }
}
