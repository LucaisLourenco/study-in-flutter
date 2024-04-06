import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthUserService {
  static const String _baseUrl = 'https://yourapi.com/api';
  static const String _loginEndpoint = '/login';

  static Future<bool> login(String username, String password) async {
    final response = await http.post(
      Uri.parse(_baseUrl + _loginEndpoint),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      // Aqui você salvaria o token JWT recebido em algum lugar seguro (SharedPreferences, por exemplo)
      return true;
    } else {
      return false;
    }
  }
}