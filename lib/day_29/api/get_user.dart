import 'dart:convert';
import 'dart:developer';
import 'package:belajar_flutter/day_29/models/user_models.dart';
import 'package:http/http.dart' as http;

Future<List<Welcome>> getUser() async {
  try {
    final response = await http.get(
      Uri.parse("https://ghibliapi.vercel.app/films"),
    );

    log("Status: ${response.statusCode}");
    log("Response: ${response.body}");

    if (response.statusCode == 200) {
      return welcomeFromJson(response.body);
    } else {
      throw Exception("Gagal mengambil data");
    }
  } catch (e) {
    log("Error: $e");
    throw Exception("Terjadi kesalahan");
  }
}
