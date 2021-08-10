import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sample_app/common/base/base_view_model.dart';

mixin StateAwarenessViewModel<VM extends BaseViewModel,
    T extends StatefulWidget> on State<T> {
  @protected
  VM viewModel = GetIt.I<VM>();

  @override
  void dispose() {
    (VM as BaseViewModel).onCleared();
    super.dispose();
  }
}
