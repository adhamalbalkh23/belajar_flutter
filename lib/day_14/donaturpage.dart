import 'package:belajar_flutter/day_14/data_amal.dart';
import 'package:flutter/material.dart';

class Donaturpage extends StatelessWidget {
  const Donaturpage({super.key});

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text("Daftar Donatur")),
    body: ListView.builder(
      itemCount: dataAmal.length,
      itemBuilder: (context, index) {
        final item = dataAmal[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage (item.image),
          ),
          title: Text(item.namaDonatur),
          subtitle:Text("Kategori: ${item.jenisAmal}\nTanggal: ${item.tanggalTransaksi}"),
          trailing: Text(item.jumlahDonasi,
          style: TextStyle(fontWeight: FontWeight.bold),
          ),
          isThreeLine: true,
          onTap: () {},
        );

        
      },
    ),
  );
}
}
