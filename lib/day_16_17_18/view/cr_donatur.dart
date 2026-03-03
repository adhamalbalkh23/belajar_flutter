import 'package:belajar_flutter/day_16_17_18/database/donatur_controller.dart';
import 'package:belajar_flutter/day_16_17_18/models/donatur_model.dart';
import 'package:belajar_flutter/day_16_17_18/view/donaturscreen.dart';
import 'package:belajar_flutter/extension/navigator.dart';
import 'package:belajar_flutter/utils/decoration_from.dart';
import 'package:flutter/material.dart';

class CrDonatur extends StatefulWidget {
  const CrDonatur({super.key});

  @override
  State<CrDonatur> createState() => _DonaturpageState();
}

class _DonaturpageState extends State<CrDonatur> {
  final TextEditingController nameControler = TextEditingController();
  final TextEditingController pesanControler = TextEditingController();
  final TextEditingController jumlahControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                controller: nameControler,
                decoration: decorationConstant(
                  hintText: "Masukkan Nama/Donatur",
                ),
              ),
              SizedBox(height: 24),
              TextFormField(
                controller: jumlahControler,
                decoration: decorationConstant(
                  hintText: "Masukkan Jumlah Donasi",
                ),
              ),
              SizedBox(height: 24),
              TextFormField(
                controller: pesanControler,
                decoration: decorationConstant(
                  hintText: "Masukkan Pesan Donasi",
                ),
              ),
              SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    if (nameControler.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Nama belum di isi")),
                      );
                      return;
                    }
                    if (jumlahControler.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Jumlah belum di isi")),
                      );
                      return;
                    }
                    if (pesanControler.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Pesan belum di isi")),
                      );
                      return;
                    }
                    await DonaturController.registerDonatur(
                      DonaturModel(
                        nama: nameControler.text,
                        pesandonasi: pesanControler.text,
                        jumlah: jumlahControler.text,
                      ),
                    );
                    nameControler.clear();
                    pesanControler.clear();
                    jumlahControler.clear();
                    setState(() {});
                  },
                  child: Text("Kirim Donasi"),
                ),
              ),
              SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    context.push(Donaturscreen());
                  },
                  child: Text("Lihat Data Donatur"),
                ),
              ),
              donaturWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

FutureBuilder<List<DonaturModel>> donaturWidget() {
  return FutureBuilder<List<DonaturModel>>(
    future: DonaturController.getAllDonatur(),
    builder:
        (BuildContext context, AsyncSnapshot<List<DonaturModel>> snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          final donatur = snapshot.data!;
          return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: donatur.length,
            itemBuilder: (context, index) {
              final data = donatur[index];
              return ListTile(
                title: Text(data.nama),
                subtitle: Text(data.pesandonasi),
                trailing: Text(data.jumlah),
              );
            },
          );
        },
  );
}
