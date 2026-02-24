import 'package:flutter/material.dart';

class Switchpage extends StatefulWidget {
  const Switchpage({super.key});

  @override
  State<Switchpage> createState() => _SwitchpageState();
}

class _SwitchpageState extends State<Switchpage> {
  bool onOff = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: onOff ? const Color.fromARGB(255, 3, 3, 2) : Colors.white,
      appBar: AppBar(title: Text("Dark mode")),
      body: Column(
        children: [
        Text("Dark Mode"),
          Switch(
            value: onOff,
            onChanged: (value) {
              onOff = value ?? false;
              setState(() {});
            },
          ),
        ],
      ),

    );
  }
}