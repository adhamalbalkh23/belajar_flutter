import 'package:flutter/material.dart';
import 'package:belajar_flutter/day_30/api/profile.dart';

class EditProfilePage extends StatefulWidget {
  final String currentName;

  const EditProfilePage({super.key, required this.currentName});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final TextEditingController nameController = TextEditingController();

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    nameController.text = widget.currentName;
  }

  Future<void> handleUpdate() async {
    if (nameController.text.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Nama tidak boleh kosong")));
      return;
    }

    setState(() => isLoading = true);

    try {
      final result = await updateProfile(nameController.text);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(result["message"] ?? "Berhasil update")),
      );

      if (!mounted) return;

      Navigator.pop(context, nameController.text); // kirim data balik
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Gagal update: ${e.toString()}")));
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profil"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nama", style: TextStyle(fontWeight: FontWeight.bold)),

            SizedBox(height: 6),

            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Masukkan nama baru",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: isLoading ? null : handleUpdate,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(vertical: 14),
                ),
                child: isLoading
                    ? CircularProgressIndicator(color: Colors.white)
                    : Text("Simpan"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
