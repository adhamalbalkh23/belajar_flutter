import 'package:flutter/material.dart';

class ListmapPage  extends StatelessWidget {
   ListmapPage ({super.key});

  final List<Map<String, dynamic>> kategoriAmal2 = [
      {'nama': 'Sedekah Harian', 'icon': Icons.volunteer_activism},
      {'nama': 'Zakat Penghasilan', 'icon': Icons.attach_money},
      {'nama': 'Infaq Jum\'at', 'icon': Icons.mosque},
      {'nama': 'Wakaf Al-Qur\'an', 'icon': Icons.menu_book},
      {'nama': 'Donasi Pembangunan Masjid', 'icon': Icons.account_balance},
      {'nama': 'Santunan Anak Yatim', 'icon': Icons.child_care},
      {'nama': 'Infaq', 'icon': Icons.volunteer_activism},
      {'nama': 'zakat maal', 'icon': Icons.attach_money},
      {'nama': 'zakat fitrah', 'icon': Icons.attach_money},
      {'nama': 'Zakat Perdagangan', 'icon': Icons.store},
      {'nama': 'Zakat Pertanian', 'icon': Icons.agriculture},
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Kategori Amal")),
    body: ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: kategoriAmal2.length,
      itemBuilder: (context, index) {
        final item = kategoriAmal2[index];

        return Container(
          margin: EdgeInsets.only(bottom: 14),
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 6,
                offset:Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Icon(
                item["icon"],
                color: Colors.green,
                size: 28,
              ),
              SizedBox(width: 16),
              Expanded(
                child: Text(
                  item["nama"],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            ],
          ),
        );
      },
    ),
  );
  }
}