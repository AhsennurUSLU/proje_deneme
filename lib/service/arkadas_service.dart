import 'dart:convert';

import 'package:soruapp/model/arkadas_model.dart';
import 'package:http/http.dart' as http;

class ArkadasService {
  final String url = "https://reqres.in/api/users?page=2";
  Future<AutoGenerate?> fetchArkadas() async {
    var istek = await http.get(Uri.parse(url));
    if (istek.statusCode == 200) {
      var jsonBody = AutoGenerate.fromJson(jsonDecode(istek.body));
      return jsonBody;
    } else {
      print("İstek başarısız oldu => ${istek.statusCode}");
    }
  }
}
