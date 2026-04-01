import 'package:belajar_flutter/day_29/view/homeghibli.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Splashghibli extends StatefulWidget {
  const Splashghibli({super.key});

  @override
  State<Splashghibli> createState() => _SplashghibliState();
}

class _SplashghibliState extends State<Splashghibli> {
  final String text = "GHIBFLIX";
  String visibleText = "";

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  void startAnimation() async {
    for (int i = 0; i < text.length; i++) {
      await Future.delayed(const Duration(milliseconds: 120));
      setState(() {
        visibleText += text[i];
      });
    }

    // delay setelah semua huruf muncul
    await Future.delayed(const Duration(milliseconds: 800));

    // pindah ke home
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MoviePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 300),
          style: TextStyle(
            fontFamily: 'BebasNeue',
            fontSize: 64,
            letterSpacing: 6,
            color: Colors.red,
            shadows: [Shadow(color: Colors.redAccent, blurRadius: 25)],
          ),
          child: Text(visibleText),
        ),
      ),
    );
  }
}
