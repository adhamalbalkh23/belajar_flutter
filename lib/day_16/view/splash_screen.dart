import 'package:belajar_flutter/day_14/drawerglobalpage.dart';
import 'package:belajar_flutter/day_16/database/preference.dart';
import 'package:belajar_flutter/day_16/view/loginpage2.dart';
import 'package:belajar_flutter/extension/navigator.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    autoLogin();
  }

  void autoLogin() async {
    await Future.delayed(Duration(seconds: 5));
    bool? data = await PreferenceHandler.getIsLogin();
    print(data);
    print("Hai, Adham");
    if (data == true) {
      context.pushAndRemoveAll(Drawerglobalpage());
    } else {
      context.pushAndRemoveAll(Loginpage2());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(183, 164, 230, 89),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset("assets/images/logo_masjid.png")],
      ),
    );
  }
}