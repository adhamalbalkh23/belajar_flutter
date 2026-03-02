import 'package:belajar_flutter/day_16/database/siswa_controller.dart';
import 'package:belajar_flutter/day_16/models/siswa_model.dart';
import 'package:belajar_flutter/utils/decoration_from.dart';
import 'package:flutter/material.dart';

class CrSiswa extends StatefulWidget {
  const CrSiswa({super.key});

  @override
  State<CrSiswa> createState() => _CrSiswaState();
}

class _CrSiswaState extends State<CrSiswa> {
  final TextEditingController nameControler = TextEditingController();
  final TextEditingController kelasControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: nameControler,
            decoration: decorationConstant(hintText: "Masukkan Nama Siswa"),
          ),
          SizedBox(height: 24),

          TextFormField(
            controller: kelasControler,
            decoration: decorationConstant(hintText: "Masukkan Kelas Siswa"),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (nameControler.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    (SnackBar(content: Text("Nama Siswa Tidak Boleh Kosong"))),
                  );
                  return;
                }
                if (kelasControler.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    (SnackBar(content: Text("Kelas Siswa Tidak Boleh Kosong"))),
                  );
                  return;
                }
                SiswaController.registerSiswa(
                  SiswaModel(
                    nama: nameControler.text,
                    kelas: kelasControler.text,
                  ),
                );
                nameControler.clear();
                kelasControler.clear();
                setState(() {});
              },
              child: Text("Tambah Siswa"),
            ),
          ),
          FutureBuilder<List<SiswaModel>>(
            future: SiswaController.getAllSiswa(),

            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return CircularProgressIndicator();
              }
              final dataSiswa = snapshot.data as List<SiswaModel>;
              return ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: dataSiswa.length,
                itemBuilder: (BuildContext context, int index) {
                  final items = dataSiswa[index];
                  return ListTile(
                    title: Text(items.nama),
                    subtitle: Text(items.kelas),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
