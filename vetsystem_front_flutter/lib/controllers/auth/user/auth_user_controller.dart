import 'package:flutter/material.dart';
import 'package:vetsystem_front_flutter/services/auth/user/auth_user_service.dart';


class AuthUserController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login(BuildContext context) async {
    final username = usernameController.text;
    final password = passwordController.text;

    bool success = await AuthUserService.login(username, password);
    if (success) {
      // Navegar para a tela principal
      Navigator.of(context).pushReplacementNamed('/home');
    } else {
      // Mostrar erro
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Login Failed')));
    }
  }
}