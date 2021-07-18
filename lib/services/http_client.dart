import 'dart:convert';

import 'package:home_chef/models/user.dart';
import 'package:http/http.dart' as http;

class HttpClient {
  static var client = http.Client();

  static Future<dynamic> userLogin(String mobileNumber, String password) async {
    final response = await http.post(
      Uri.parse('http://qa.homechef.pk/api/v1/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        <String, String>{"mobile": mobileNumber, "password": password},
      ),
    );

    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    } else {
      return User.fromJson(jsonDecode(response.body));
    }
  }
}
