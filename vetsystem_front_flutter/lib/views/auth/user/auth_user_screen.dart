
import 'package:flutter/material.dart';
import 'package:vetsystem_front_flutter/controllers/auth/user/auth_user_controller.dart';

class LoginScreen extends StatelessWidget {
  final AuthUserController _controller = AuthUserController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Adicione seu TextFormField para usuário e senha aqui
    // Utilize um Form com GlobalKey para validações
    return Scaffold(
        body: Center(
            child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Username'),
                        controller: _controller.usernameController,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(labelText: 'Password'),
                        controller: _controller.passwordController,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _controller.login(context);
                        },
                        child: Text('Login'),
                      ),
                    ]))));
  }
}
