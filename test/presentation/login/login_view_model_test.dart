import 'dart:async';

import 'package:mocktail/mocktail.dart';
import 'package:sample_app/common/error/server_error.dart';
import 'package:sample_app/domain/model/login_credential.dart';
import 'package:sample_app/domain/model/user.dart';
import 'package:sample_app/domain/usecase/login_use_case.dart';
import 'package:sample_app/domain/usecase/single_use_case_result.dart';
import 'package:sample_app/presentation/login/login_view_model.dart';
import 'package:test/test.dart';

class MockLoginUseCase extends Mock implements LoginUseCase {}

class FakeLoginCredential extends Fake implements LoginCredential {}

void main() {
  setUpAll(() {
    registerFallbackValue(FakeLoginCredential());
  });

  group('loginViewModel', () {
    late LoginViewModel viewModel;
    late final LoginUseCase loginUseCase = MockLoginUseCase();
    setUp(() {
      viewModel = LoginViewModel(loginUseCase);
    });

    test('shows username error message if username is empty', () async {
      scheduleMicrotask(() {
        viewModel.onLoginButtonClicked('', '1*234#');
      });

      await expectLater(
          viewModel.errorMessage, emits('Username should not be empty'));
    });

    test('shows password error message if password is empty', () async {
      scheduleMicrotask(() {
        viewModel.onLoginButtonClicked('cardX', '');
      });

      await expectLater(
          viewModel.errorMessage, emits('Password should not be empty'));
    });

    test('navigates to home if login succeeds', () async {
      final User user = User('id', 'John', 'Wick', 'John Wick', '199');
      when(() => loginUseCase.execute(any()))
          .thenAnswer((_) async => SingleUseCaseResult.success(user));

      scheduleMicrotask(
          () => viewModel.onLoginButtonClicked('CardX', '1*234#'));

      await expectLater(viewModel.navigateToHome, emits(null));
      verify(() => loginUseCase.execute(LoginCredential('CardX', '1*234#')));
    });

    test(
        'shows no internet connection message if login fails with no internet connection',
        () async {
      when(() => loginUseCase.execute(any()))
          .thenAnswer((_) async => SingleUseCaseResult.noInternetConnection());

      expectLater(viewModel.isLoading, emitsInOrder([false, true, false]));
      expectLater(viewModel.errorMessage, emits('No internet connection'));

      viewModel.onLoginButtonClicked('CardX', '1*234#');
    });

    test('shows server error message if login fails with server error',
        () async {
      final ServerError error = ServerError(
          500, 'Internal Server Error', '500 Internal Server Error');
      when(() => loginUseCase.execute(any()))
          .thenAnswer((_) async => SingleUseCaseResult.serverError(error));

      expectLater(viewModel.isLoading, emitsInOrder([false, true, false]));
      expectLater(viewModel.errorMessage, emits('Internal Server Error'));

      viewModel.onLoginButtonClicked('CardX', '1*234#');
    });

    test('shows generic message if login fails with generic error', () async {
      final Exception exception = Exception('Some error');
      when(() => loginUseCase.execute(any()))
          .thenAnswer((_) async => SingleUseCaseResult.genericError(exception));

      expectLater(viewModel.isLoading, emitsInOrder([false, true, false]));
      expectLater(viewModel.errorMessage, emits('Exception: Some error'));

      viewModel.onLoginButtonClicked('CardX', '1*234#');
    });
  });
}
