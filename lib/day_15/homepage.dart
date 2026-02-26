import 'package:flutter/material.dart';

class Homepage  extends StatelessWidget {
  final String nama;
  

  const Homepage ({
    super.key,
    required this.nama,
    
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Konfirmasi")),
      body: Center(
        child: Text(
          "Terima kasih, $nama telah mendaftar.",
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}