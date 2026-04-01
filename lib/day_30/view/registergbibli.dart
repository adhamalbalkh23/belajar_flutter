import 'package:belajar_flutter/day_15/homepage.dart';
import 'package:belajar_flutter/extension/navigator.dart';
import 'package:flutter/material.dart';

class Registergbibli extends StatefulWidget {
  const Registergbibli({super.key});

  @override
  State<Registergbibli> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registergbibli> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/landing_page.png",
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 60),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/logo_masjid.png",
                          height: 200,
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Form Pendaftaran",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  // Nama Lengkap
                  Text(
                    "Nama Lengkap",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: "Masukkan nama lengkap",
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Nama wajib diisi";
                      }
                      return null;
                    },
                  ),

                  SizedBox(height: 14),

                  // Email
                  Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 6),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: "contoh@email.com",
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email wajib diisi";
                      }
                      if (!value.contains("@")) {
                        return "Email harus mengandung @";
                      }
                      return null;
                    },
                  ),

                  SizedBox(height: 14),

                  Text(
                    "Nomor HP",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  TextFormField(
                    controller: _phoneController,
                    decoration: const InputDecoration(
                      hintText: "Masukkan nomor hpmu disini",
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),

                  SizedBox(height: 14),

                  // Password
                  Text(
                    "Password",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Masukkan password",
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password wajib diisi";
                      }
                      return null;
                    },
                  ),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              title: Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: 50,
                              ),
                              content: Text(
                                "Pendaftaran berhasil!",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context); // Tutup popup
                                    context.push(
                                      Homepage(nama: _nameController.text),
                                    );
                                  },
                                  child: Text("OK"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreen,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Daftar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
