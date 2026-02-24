import 'package:flutter/material.dart';

class Jampage extends StatefulWidget {
  const Jampage({super.key});

  @override
  State<Jampage> createState() => _JampageState();
}

class _JampageState extends State<Jampage> {
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Time Picker"),),
      body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text(
      selectedTime == null
          ? "Belum pilih jam"
          : selectedTime!.format(context),
    ),
    const SizedBox(height: 20),
    ElevatedButton(
      onPressed: () async {
        final TimeOfDay? picked = await showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
        );

        if (picked != null) {
          setState(() {
            selectedTime = picked;
          });
        }
      },
      child: const Text("Pilih Jam"),
    ),
  ],
),
    );
  }
}