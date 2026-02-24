import 'package:flutter/material.dart';

class Dropdownpage extends StatefulWidget {
  const Dropdownpage({super.key});

  @override
  State<Dropdownpage> createState() => _DropdownpageState();
}

class _DropdownpageState extends State<Dropdownpage> {
  String? selectedDropdown;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Metode Pembayaran"),),
      body: Column(
        children: [Text("Silahkan Pilih metode pembayaran"),
          DropdownButtonFormField(
            decoration: InputDecoration(fillColor: Colors.lightGreen, filled: true),
            initialValue: selectedDropdown,
            hint: Text("Pilih Pembayaran"),
            items: ["Transfer Bank", "Qris", "Virtual Account"].map((String value) {
              return DropdownMenuItem(value: value, child: Text(value));
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedDropdown = value;
              });
            },
          ),        
        ],
      ),
    );
  }
}