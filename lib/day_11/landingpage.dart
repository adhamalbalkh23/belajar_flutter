import 'package:belajar_flutter/day_11/registerpage.dart';
import 'package:belajar_flutter/extension/navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Landingpage extends StatelessWidget {
  const Landingpage({super.key});

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

           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 112),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // Judul
                const Text(
                  "Mudah Beramal. \nAman. Transparan",
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: "almendra sc",
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 18),

                const Text(
                  "Salurkan zakat, infak, dan sedekah langsung \ndari ponsel anda.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                 const SizedBox(height: 40),

                
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/logo masjid.png",
                        height: 316,
                        width: 816,
                      ),
                    ],
                  ),
                ),
                
                const Spacer(),

                
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 10),
                  ),
                ],
                    border: Border.all(color: Colors.black26),
                ),
                    child: Column(
                      children: [

                      const Text(
                        "Mulai Kebaikan hari ini",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 14),

                      
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            context.push(Registerpage());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightGreen,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Text(
                            "Daftar Sekarang",
                            style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold),
                            
                          ),
                        ),
                      ),

                      SizedBox(height: 12),

                      
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightGreen,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Text(
                            "Masuk",
                            style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              
              )   
            ),
        ]
      ),
    );
      
  }
}