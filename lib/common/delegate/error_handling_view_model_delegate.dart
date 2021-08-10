import 'package:flutter/foundation.dart';
import 'package:rxdart/subjects.dart';
import 'package:sample_app/common/base/base_view_model.dart';

/// Error handling delegate for view model
mixin ErrorHandlingViewModelDelegate on BaseViewModel {

  late final PublishSubject<String> _errorMessage = PublishSubject();

  Stream<String> get errorMessage => _errorMessage;

  @protected
  void showErrorMessage(String message) {
    _errorMessage.add(message);
  }
}