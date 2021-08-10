import 'package:flutter/material.dart';
import 'package:sample_app/common/base/base_state.dart';

/// Reusable page with back navigation button
mixin BackNavigationPage<T extends StatefulWidget> on BaseState<T> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title(),
      ),
      body: body(),
    );
  }

  Widget title();

  Widget body();
}
