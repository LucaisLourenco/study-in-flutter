import 'package:flutter/material.dart';

class AuthUserScreen extends StatelessWidget {
  const AuthUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtém as dimensões da tela
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Define a largura e altura máxima para o formulário de login
    const maxFormWidth = 400.0;
    final maxFormHeight = screenHeight * 0.7; // 70% da altura da tela

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: maxFormWidth,
              maxHeight: maxFormHeight,
            ),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      child: Image.asset(
                        'assets/logo.png', // Ajuste para o caminho correto do seu logo
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 45.0),
                    emailField(),
                    const SizedBox(height: 25.0),
                    passwordField(),
                    const SizedBox(height: 35.0),
                    loginButton(context),
                    const SizedBox(height: 15.0),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Senha",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
  }

  Widget loginButton(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: const Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.of(context).pushReplacementNamed('/home');
        },
        child: const Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}