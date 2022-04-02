import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sossetupservice/models/auth_controller/auth_post_model.dart';

abstract class HttpRepositoryGet {
  Future<List<AuthModel>> getHttpFromApi();
}

class HttpSampleRepositoryGet implements HttpRepositoryGet {
  final baseUrl = Uri.parse("https://jsonplaceholder.typicode.com/users");
  @override
  Future<List<AuthModel>> getHttpFromApi() async {
    final response = await http.get(baseUrl);
    return (jsonDecode(response.body) as List)
        .map((e) => AuthModel.fromJson(e))
        .toList();
  }

  Future<List<AuthModel>> postDataReg() async {
    final response = await http.post(
      baseUrl,
      body: {},
      headers: {},

    );
    return (jsonDecode(response.body) as List)
        .map((e) => AuthModel.fromJson(e))
        .toList();
  }
}
