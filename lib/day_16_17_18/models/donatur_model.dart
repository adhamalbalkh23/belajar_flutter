import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class DonaturModel {
  final int? id;
  final String nama;
  final String pesandonasi;
  final String jumlah;
  DonaturModel({
    this.id,
    required this.nama,
    required this.pesandonasi,
    required this.jumlah,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nama': nama,
      'pesandonasi': pesandonasi,
      'jumlah': jumlah,
    };
  }

  factory DonaturModel.fromMap(Map<String, dynamic> map) {
    return DonaturModel(
      id: map['id'] != null ? map['id'] as int : null,
      nama: map['nama'] as String,
      pesandonasi: map['pesandonasi'] as String,
      jumlah: map['jumlah'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DonaturModel.fromJson(String source) =>
      DonaturModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
