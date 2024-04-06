import 'package:flutter/material.dart';
import 'package:vetsystem_front_flutter/views/auth/user/auth_user_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => AuthUserScreen(),
      },
    );
  }
}