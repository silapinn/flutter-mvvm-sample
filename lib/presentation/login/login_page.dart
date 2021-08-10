import 'package:flutter/material.dart';
import 'package:sample_app/common/base/base_state.dart';
import 'package:sample_app/common/viewmodel/state_awareness_view_model.dart';
import 'package:sample_app/presentation/home/home_page.dart';
import 'package:sample_app/presentation/login/login_view_model.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State createState() => _LoginPageState();
}

class _LoginPageState extends BaseState<LoginPage>
    with StateAwarenessViewModel<LoginViewModel, LoginPage> {
  late TextEditingController _usernameTextController;
  late TextEditingController _passwordTextController;

  @override
  void initState() {
    super.initState();
    subscribeToViewModel();
    _usernameTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    _usernameTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: StreamBuilder(
              stream: viewModel.isLoading,
              builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data == true) {
                    return Text("Loading...");
                  } else {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        buildUsernameTextField(),
                        buildPasswordTextField(),
                        SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(double.infinity, 48)),
                            child: Text('Login'),
                            onPressed: () => viewModel.onLoginButtonClicked(
                                _usernameTextController.text,
                                _passwordTextController.text))
                      ],
                    );
                  }
                } else {
                  return Text("Loading...");
                }
              }),
        ),
      ),
    );
  }

  Widget buildUsernameTextField() {
    return StreamBuilder(
        stream: viewModel.username,
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          return TextField(
            controller: _usernameTextController,
            decoration: InputDecoration(labelText: 'Username'),
          );
        });
  }

  Widget buildPasswordTextField() {
    return StreamBuilder(
        stream: viewModel.username,
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          return TextField(
            controller: _passwordTextController,
            decoration: InputDecoration(labelText: 'Password'),
          );
        });
  }

  void subscribeToViewModel() {
    viewModel.username.listen((username) {
      _usernameTextController.text = username;
    }).addTo(compositeSubscription);

    viewModel.password.listen((password) {
      _usernameTextController.text = password;
    }).addTo(compositeSubscription);

    viewModel.errorMessage.listen((message) {
      final snackBar = SnackBar(
        content: Text(message),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }).addTo(compositeSubscription);

    viewModel.navigateToHome.listen((_) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomePage()));
    });
  }
}
