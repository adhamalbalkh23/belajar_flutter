import 'dart:convert';
import 'dart:developer';

import 'package:belajar_flutter/day_16_17_18/database/preference.dart';
import 'package:belajar_flutter/day_30/api/endpoint.dart';
import 'package:belajar_flutter/day_30/models/get_model.dart';
import 'package:http/http.dart' as http;

// class Repository {

// }
Future<GetUserModel?> getUser() async {
  var token = await PreferenceHandler.getToken();
  final response = await http.get(
    Uri.parse(Endpoint.register),

    headers: {"Accept": "application/json", "Authentication": token.toString()},
  );

  log(response.body);
  if (response.statusCode == 200) {
    return GetUserModel.fromJson(json.decode(response.body));
  } else {
    final error = GetUserModel.fromJson(json.decode(response.body));
    log(error.toString());

    throw Exception(error.message);
  }
}
