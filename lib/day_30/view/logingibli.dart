import 'package:belajar_flutter/day_14/drawerglobalpage.dart';
import 'package:belajar_flutter/day_16_17_18/database/preference.dart';
import 'package:belajar_flutter/day_30/api/login.dart';
import 'package:belajar_flutter/day_30/view/registergbibli.dart';
import 'package:flutter/material.dart';

class Logingibli extends StatefulWidget {
  const Logingibli({super.key});

  @override
  State<Logingibli> createState() => _Loginpage2State();
}

class _Loginpage2State extends State<Logingibli> {
  final TextEditingController emailContoler = TextEditingController();
  final TextEditingController passwordControler = TextEditingController();

  bool isLoading = false;

  Future<void> handleLogin() async {
    setState(() => isLoading = true);

    try {
      final result = await loginUser(
        email: emailContoler.text,
        password: passwordControler.text,
      );

      if (result != null) {
        // simpan status login
        await PreferenceHandler().storingIsLogin(true);

        // simpan token (optional)
        if (result.data?.token != null) {
          await PreferenceHandler().saveToken(result.data!.token!);
        }

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(result.message ?? "Login berhasil")),
        );

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Drawerglobalpage()),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Login gagal: ${e.toString()}")));
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // BACKGROUND
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/landing_page.png",
              fit: BoxFit.cover,
            ),
          ),

          // CONTENT
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 62),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/logo_masjid.png",
                    height: 200,
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                TextFormField(
                  controller: emailContoler,
                  decoration: InputDecoration(
                    hintText: "Masukan email",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 16),

                const Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                TextFormField(
                  controller: passwordControler,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Masukan password",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 24),

                // LOGIN BUTTON
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: isLoading ? null : handleLogin,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: isLoading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text(
                            "Masuk",
                            style: TextStyle(color: Colors.white),
                          ),
                  ),
                ),

                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: isLoading
                        ? null
                        : () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Registergbibli(),
                              ),
                            );
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: isLoading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text(
                            "Daftar",
                            style: TextStyle(color: Colors.white),
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
