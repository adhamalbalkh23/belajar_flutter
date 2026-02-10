import 'package:flutter/material.dart';

class Tugas1flutter extends StatelessWidget {
  const Tugas1flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('profil saya',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
       
      ),),
      body: Column(children: [
        Text("Nama : Adham Albalkh"
        , style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        Row(children: [
          Icon(Icons.location_on),
          Text("Central Jakarta", style: TextStyle(fontSize: 18),)
        ],
        ),
        Text("Hobi saya belajar dan berlari", style: TextStyle(fontSize: 18),)

      ],)
    );

    
  }
}