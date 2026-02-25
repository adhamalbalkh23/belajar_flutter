import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ttgaplikasi extends StatefulWidget {
  const Ttgaplikasi({super.key});

  @override
  State<Ttgaplikasi> createState() => _TtgaplikasiState();
}

class _TtgaplikasiState extends State<Ttgaplikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tentang Aplikasi ini"),),
    );
  }
}