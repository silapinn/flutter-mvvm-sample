import 'package:flutter/material.dart';
import 'package:sample_app/common/base/base_state.dart';
import 'package:sample_app/common/ui/back_navigation_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage>
    with BackNavigationPage<HomePage> {
  @override
  Widget body() {
    return Center(child: Text('Home page is here'));
  }

  @override
  Widget title() {
    return Text('Home');
  }
}
