import 'package:belajar_flutter/day_16_17_18/database/donatur_controller.dart';
import 'package:belajar_flutter/day_16_17_18/models/donatur_model.dart';
import 'package:belajar_flutter/extension/navigator.dart';
import 'package:belajar_flutter/utils/decoration_from.dart';
import 'package:flutter/material.dart';

class Donaturscreen extends StatefulWidget {
  const Donaturscreen({super.key});

  @override
  State<Donaturscreen> createState() => _DonaturscreenState();
}

class _DonaturscreenState extends State<Donaturscreen> {
  late List<DonaturModel> dataDonatur = [];
  @override
  void initState() {
    super.initState();
    getDataDonatur();
  }

  Future<void> getDataDonatur() async {
    await Future.delayed(Duration(seconds: 3));
    dataDonatur = await DonaturController.getAllDonatur();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: dataDonatur.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              shrinkWrap: true,
              itemCount: dataDonatur.length,
              itemBuilder: (BuildContext context, int index) {
                final items = dataDonatur[index];
                return ListTile(
                  title: Text(items.nama),
                  subtitle: Text(items.pesandonasi),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(items.jumlah),
                      IconButton(
                        onPressed: () async {
                          await showEditDialog(context, items);
                          dataDonatur = await DonaturController.getAllDonatur();
                          setState(() {});
                        },
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () async {
                          await showDeleteDialog(context, items.id!);
                          dataDonatur = await DonaturController.getAllDonatur();
                          setState(() {});
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }

  Future<void> showEditDialog(BuildContext context, DonaturModel items) async {
    final namaController = TextEditingController(text: items.nama);
    final pesanControler = TextEditingController(text: items.pesandonasi);
    final jumlahControler = TextEditingController(text: items.jumlah);

    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Edit Nama"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: namaController,
                decoration: decorationConstant(hintText: "Nama"),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: pesanControler,
                decoration: decorationConstant(hintText: "Pesan"),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text("Batal"),
            ),
            ElevatedButton(
              onPressed: () async {
                if (items.id == null) {
                  return;
                }
                await DonaturController.updateDonatur(
                  DonaturModel(
                    id: items.id,
                    nama: namaController.text,
                    pesandonasi: pesanControler.text,
                    jumlah: jumlahControler.text,
                  ),
                );
                context.pop();
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Pesan/Nama di update")));
              },
              child: Text("Simpan"),
            ),
          ],
        );
      },
    );
  }

  Future<void> showDeleteDialog(BuildContext context, int id) async {
    final confirm = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Konfirmasi"),
          content: Text("Apakah anda yakin ingin menghapus data ini?"),
          actions: [
            TextButton(
              onPressed: () {
                context.pop(false);
              },
              child: Text("Batal"),
            ),
            ElevatedButton(
              onPressed: () async {
                context.pop(true);
              },
              child: Text("Hapus"),
            ),
          ],
        );
      },
    );

    if (confirm == true) {
      await DonaturController.deleteDonatur(id);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Data berhasil dihapus")));
      setState(() {});
    }
  }
}
