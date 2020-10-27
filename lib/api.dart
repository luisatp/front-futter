import 'package:http/http.dart' as http;
import 'dart:convert';

Future loginUser(String email, String password) async {
  String url = 'http://localhost:3000/signin';
  final response = await http.post(url,
  headers: {"Accept":"Application/json"},
    body: {'email':email, 'password': password}
  );
  var convertedDatoJson = jsonDecode(response.body);
  return convertedDatoJson;
}