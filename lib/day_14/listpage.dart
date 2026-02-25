import 'package:flutter/material.dart';

class Listpage extends StatelessWidget {
  Listpage({super.key});

  final List<String> kategoriAmal= [
      "Sedekah",
      "Sedekah Subuh",
      "Zakat Penghasilan",
      "infaq",
      "infaq Jum'at",
    ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kategori Amal",style: TextStyle(fontWeight: FontWeight.bold),)),
      body: ListView.builder(
        itemCount: kategoriAmal.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Center(
              child: Container(
                width: 300,
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    kategoriAmal[index],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}