import 'package:belajar_flutter/day_14/drawerglobalpage.dart';
import 'package:belajar_flutter/day_16/database/preference.dart';
import 'package:belajar_flutter/extension/navigator.dart';
import 'package:flutter/material.dart';

class Loginpage2 extends StatelessWidget {
  const Loginpage2 ({super.key});

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
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 62),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/logo_masjid.png",
                        height: 316,
                        width: 316,
                      ),
                    ],
                  ),
                ),

                Text(
                  "Email",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Masukan emailmu disini",
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),

                SizedBox(height: 16),
                Text(
                  "Password",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Masukan passwordmu disini",
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                
                SizedBox(height: 24),
                
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                        PreferenceHandler().storingIsLogin(true);
                        context.push(Drawerglobalpage());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child:Text(
                      "Masuk",
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
        ],
      ),
    );
  }
}