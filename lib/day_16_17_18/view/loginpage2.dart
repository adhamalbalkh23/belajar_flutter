import 'package:belajar_flutter/day_14/drawerglobalpage.dart';
import 'package:belajar_flutter/day_16_17_18/database/preference.dart';
import 'package:belajar_flutter/day_16_17_18/database/sqflite.dart';
import 'package:belajar_flutter/day_16_17_18/models/user_model.dart';
import 'package:belajar_flutter/extension/navigator.dart';
import 'package:flutter/material.dart';

class Loginpage2 extends StatefulWidget {
  const Loginpage2({super.key});

  @override
  State<Loginpage2> createState() => _Loginpage2State();
}

class _Loginpage2State extends State<Loginpage2> {
  final TextEditingController emailContoler = TextEditingController();
  final TextEditingController passwordControler = TextEditingController();
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
                TextFormField(
                  controller: emailContoler,
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
                TextFormField(
                  controller: passwordControler,
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
                    onPressed: () async {
                      final UserModel? login = await DbHelper.loginUser(
                        email: emailContoler.text,
                        password: passwordControler.text,
                      );

                      if (login != null) {
                        PreferenceHandler().storingIsLogin(true);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Login Berhasil")),
                        );
                        context.push(Drawerglobalpage());
                      } else {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text("Login Gagal")));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Masuk",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      await DbHelper.registerUser(
                        UserModel(
                          email: emailContoler.text,
                          password: passwordControler.text,
                        ),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Pendaftaran Berhasil")),
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
                SizedBox(height: 16),
                SizedBox(height: 56),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
