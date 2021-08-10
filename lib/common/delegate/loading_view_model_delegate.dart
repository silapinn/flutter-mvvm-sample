import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sample_app/common/base/base_view_model.dart';

/// Loading delegate for view model
mixin LoadingViewModelDelegate on BaseViewModel {

  late final BehaviorSubject<bool> _isLoading = BehaviorSubject.seeded(false);

  Stream<bool> get isLoading => _isLoading;

  @protected
  void showLoading() {
    _isLoading.value = true;
  }

  @protected
  void hideLoading() {
    _isLoading.value = false;
  }
}
