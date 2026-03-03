import 'package:belajar_flutter/day_16_17_18/database/sqflite.dart';
import 'package:belajar_flutter/day_16_17_18/models/donatur_model.dart';

class DonaturController {
  static Future<void> registerDonatur(DonaturModel donatur) async {
    final dbs = await DbHelper.db();
    await dbs.insert('donatur', donatur.toMap());
    print(donatur.toMap());
  }

  static Future<List<DonaturModel>> getAllDonatur() async {
    final dbs = await DbHelper.db();
    final List<Map<String, dynamic>> results = await dbs.query("donatur");
    print(results.map((e) => DonaturModel.fromMap(e)).toList());
    return results.map((e) => DonaturModel.fromMap(e)).toList();
  }

  static Future<int> updateDonatur(DonaturModel donatur) async {
    final dbs = await DbHelper.db();
    if (donatur.id == null) {
      throw Exception("ID Wajid ada");
    }
    return dbs.update(
      'donatur',
      donatur.toMap(),
      where: 'id = ?',
      whereArgs: [donatur.id],
    );
  }

  static Future<int> deleteDonatur(int id) async {
    final dbs = await DbHelper.db();
    return dbs.delete('donatur', where: 'id = ?', whereArgs: [id]);
  }
}
