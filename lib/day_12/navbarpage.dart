import 'dart:ui';

import 'package:belajar_flutter/day_12/checkboxpage.dart';
import 'package:belajar_flutter/day_12/dropdownpage.dart';
import 'package:belajar_flutter/day_12/jampage.dart';
import 'package:belajar_flutter/day_12/switchpage.dart';
import 'package:belajar_flutter/day_12/tglpage.dart';
import 'package:flutter/material.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';

class Navbarpage extends StatefulWidget {
  const Navbarpage({super.key});

  @override
  State<Navbarpage> createState() => _NavbarpageState();
}

class _NavbarpageState extends State<Navbarpage> {
  int _currentIndex = 0;

  final List<Widget> _pagesList = [
    Checkboxpage(),
    Switchpage(),
    Dropdownpage(),
    Tglpage(),
    Jampage(),
  ];

  void _handleIndexChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tugas 8 Flutter"),
      backgroundColor: const Color.fromARGB(240, 250, 248, 248),
      elevation: 0,),
      extendBody: true,
      
      body: _pagesList[_currentIndex],
      backgroundColor: Color(0xFF0F172A),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child :ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(15),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20,sigmaY: 20),
            child: CrystalNavigationBar(
          currentIndex: _currentIndex,
          unselectedItemColor: const Color.fromARGB(179, 20, 20, 20),
          backgroundColor: Colors.black.withOpacity(0.1),
          borderWidth: 1,
          outlineBorderColor: Colors.white,
          onTap: _handleIndexChanged,
          items: [
            CrystalNavigationBarItem(
              icon: Icons.check_box,
              selectedColor: Colors.pinkAccent,
            ),
            CrystalNavigationBarItem(
              icon: Icons.toggle_on,
              selectedColor: Colors.pinkAccent,
            ),
            CrystalNavigationBarItem(
              icon: Icons.arrow_drop_down_circle,
              selectedColor: Colors.pinkAccent,
            ),
            CrystalNavigationBarItem(
              icon: Icons.calendar_today,
              selectedColor: Colors.pinkAccent,
            ),
            CrystalNavigationBarItem(
              icon: Icons.access_time,
              selectedColor: Colors.pinkAccent,
            ),
          ],
        ),),
        )
        
        ),
      );
    
  }
}