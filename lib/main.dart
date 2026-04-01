import 'package:belajar_flutter/day_14/drawerglobalpage.dart';
import 'package:belajar_flutter/day_16_17_18/view/splash_screen.dart';
import 'package:belajar_flutter/day_29/view/homeghibli.dart';
import 'package:belajar_flutter/day_29/view/splashghibli.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.redAccent)),
      home: Splashghibli(),
    );
  }
}
