import 'dart:convert';
import 'dart:developer';

import 'package:belajar_flutter/day_16_17_18/database/preference.dart';
import 'package:belajar_flutter/day_30/api/endpoint.dart';
import 'package:belajar_flutter/day_30/models/get_model.dart';
import 'package:http/http.dart' as http;

Future<GetUserModel?> getUser() async {
  final token = await PreferenceHandler().getToken();

  log("TOKEN: $token");

  final response = await http.get(
    Uri.parse(Endpoint.profile),
    headers: {"Accept": "application/json", "Authorization": "Bearer $token"},
  );

  log("STATUS: ${response.statusCode}");
  log("BODY: ${response.body}");

  if (response.statusCode == 200) {
    return GetUserModel.fromJson(json.decode(response.body));
  } else {
    throw Exception("Gagal ambil user: ${response.body}");
  }
}
