import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Checkboxpage extends StatefulWidget {
  const Checkboxpage({super.key});

  @override
  State<Checkboxpage> createState() => _CheckboxpageState();
}

class _CheckboxpageState extends State<Checkboxpage> {
  bool _ischeck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Syarat & Ketentuan")),
      body: Column(
        children: [
          Text("Apakah data yang sudah anda buat sudah benar?"),
          Column(
            children: [
              Checkbox(
                value: _ischeck,
                onChanged: (value) {
                  _ischeck = value ?? false;
                  setState(() {});
                },
              ),
              Text("${_ischeck ? "Ya" : "Tidak"}"),
            ],
          ),
        ],
      ),
    );
  }
}
