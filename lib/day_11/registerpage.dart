import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registerpage extends StatelessWidget {
  const Registerpage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset("assets/images/landing page.png",
          fit: BoxFit.cover),
          ),
         SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 62),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/logo masjid.png",
                      height: 316,
                      width: 316,
                    ),
                  ],
                ),
              ),
              
              
              SizedBox(height: 2),

              Text("Nama",style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height:4),
              TextField(
                decoration: InputDecoration(
                  hintText: "Masukkan namamu disini",
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white
                ),
              ),

              SizedBox(height: 4),

              Text("Email",style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height:4),
              TextField(
                decoration: InputDecoration(
                  hintText: "Masukkan emailmu disini",
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white
                ),
              ),
              SizedBox(height: 4),

              Text("Password",style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height:4),
              TextField(
                decoration: InputDecoration(
                  hintText: "Masukkan passwordmu disini",
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white
                ),
              ),
              SizedBox(height: 4),

              Text("Konfirmasi Password",style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height:4),
              TextField(
                decoration: InputDecoration(
                  hintText: "Konfirmasi passwordmu disini",
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white
                ),
              ),
            ],
          ),
         ),
      ],
      ),  

    );
  }
}