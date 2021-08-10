import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

/// Convenient base view model that holds subscriptions and handles disposing
/// with a provided function, onCleared.
abstract class BaseViewModel {
  @protected
  late final CompositeSubscription compositeSubscription =
      CompositeSubscription();

  void onCleared() {
    compositeSubscription.dispose();
  }
}
