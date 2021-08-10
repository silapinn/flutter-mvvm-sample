import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

export 'package:rxdart/rxdart.dart' show AddToCompositeSubscriptionExtension;

/// Convenient base state that hold subscriptions
/// and automatically handles subscription disposing
/// when widget is in dispose state.
abstract class BaseState<T extends StatefulWidget> extends State<T> {

  @protected
  final CompositeSubscription compositeSubscription = CompositeSubscription();

  @override
  void dispose() {
    compositeSubscription.dispose();
    super.dispose();
  }
}