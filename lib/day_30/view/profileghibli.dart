import 'package:flutter/material.dart';
import 'package:belajar_flutter/day_30/api/profile.dart';
import 'package:belajar_flutter/day_16_17_18/database/preference.dart';

class Profileghibli extends StatefulWidget {
  const Profileghibli({super.key});

  @override
  State<Profileghibli> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<Profileghibli> {
  String nama = "";
  bool isLoading = true;

  final TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadProfile();
  }

  void loadProfile() async {
    try {
      final data = await getProfile();

      print("PROFILE DATA: $data");

      setState(() {
        // ✅ FIX DI SINI (tanpa 'user')
        nama = data["data"]["name"] ?? "User";
        nameController.text = nama;
        isLoading = false;
      });
    } catch (e) {
      print("ERROR PROFILE: $e");

      setState(() {
        isLoading = false;
      });

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Gagal load profile")));
    }
  }

  void editNameDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Edit Nama"),
          content: TextField(
            controller: nameController,
            decoration: InputDecoration(hintText: "Masukkan nama baru"),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Batal"),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.pop(context);

                try {
                  final result = await updateProfile(nameController.text);

                  setState(() {
                    nama = nameController.text;
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(result["message"] ?? "Berhasil update"),
                    ),
                  );
                } catch (e) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Gagal update nama")));
                }
              },
              child: Text("Simpan"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F7),
      appBar: AppBar(
        title: Text("Profil Saya"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : nama.isEmpty
          ? Center(child: Text("Data tidak ditemukan"))
          : Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  SizedBox(height: 10),

                  CircleAvatar(radius: 50, child: Icon(Icons.person, size: 50)),

                  SizedBox(height: 12),

                  Text(
                    nama,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 20),

                  // EDIT NAMA
                  InkWell(
                    onTap: editNameDialog,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.edit, color: Colors.blue),
                          SizedBox(width: 10),
                          Expanded(child: Text("Edit Nama")),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // LOGOUT
                  InkWell(
                    onTap: () async {
                      await PreferenceHandler().clear();

                      if (!mounted) return;

                      Navigator.pushReplacementNamed(context, "/login");
                    },
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.logout, color: Colors.red),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Logout",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
