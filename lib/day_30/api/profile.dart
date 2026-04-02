import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:belajar_flutter/day_30/api/endpoint.dart';
import 'package:belajar_flutter/day_16_17_18/database/preference.dart';

Future<Map<String, dynamic>> getProfile() async {
  final token = await PreferenceHandler().getToken();

  print("TOKEN: $token");

  final response = await http.get(
    Uri.parse(Endpoint.profile),
    headers: {"Authorization": "Bearer $token", "Accept": "application/json"},
  );

  print("STATUS: ${response.statusCode}");
  print("BODY: ${response.body}");

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception("Profile gagal: ${response.body}");
  }
}

Future<Map<String, dynamic>> updateProfile(String name) async {
  final token = await PreferenceHandler().getToken();

  final response = await http.post(
    Uri.parse(Endpoint.updateProfile),
    headers: {"Authorization": "Bearer $token", "Accept": "application/json"},
    body: {"name": name},
  );

  return json.decode(response.body);
}
