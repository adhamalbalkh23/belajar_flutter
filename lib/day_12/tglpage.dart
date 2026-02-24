import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Tglpage extends StatefulWidget {
  const Tglpage({super.key});

  @override
  State<Tglpage> createState() => _TglpageState();
}

class _TglpageState extends State<Tglpage> {
  DateTime? selectedDate;

  Future<void> pickDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate = selectedDate == null
        ? "Belum pilih tanggal"
        : DateFormat('EEEE, dd MMMM yyyy',)
          .format (selectedDate!);
    return Scaffold(
      appBar: AppBar(title: Text("Tanggal Lahir Anda"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              formattedDate,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: pickDate,
              child: const Text("Pilih Tanggal"),
            ),
          ],
        ),
      ),


    );
  }
}