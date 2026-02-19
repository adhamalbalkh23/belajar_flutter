import "package:flutter/material.dart";

class Tugas4 extends StatelessWidget {
  const Tugas4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Donasi Masjid"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            "Form Donatur",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: "Nama Lengkap / Hamba Allah",
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 15),
          TextField(
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 15),
          TextField(
            decoration: InputDecoration(
              labelText: "Jumlah Donasi",
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.phone,
          ),

          SizedBox(height: 15),
          TextField(
            decoration: InputDecoration(
              labelText: "Pesan Donasi",
              border: OutlineInputBorder(),
            ),
          ),

          Padding(
            padding: EdgeInsetsGeometry.all(20),

            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                "Donasi Sekarang",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          SizedBox(height: 30),

          Divider(),

          SizedBox(height: 20),

          // Riwayat Donatur
          Text(
            "Riwayat Donatur",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 20),
            Container(
            margin: EdgeInsets.only(bottom: 25),
            padding: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(Icons.volunteer_activism, color: Colors.white),
              ),
              title: Text("Wildan"),
              subtitle: Text("Rp. 500.00 - Santunan Anak Yatim"),
            ),
          ),

          SizedBox(height: 20),

          ListTile(
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 211, 161, 13),
              child: Icon(Icons.volunteer_activism, color: Colors.white),
            ),
            title: Text("Joshua"),
            subtitle: Text("Rp. 200.00 - Pembangunan Masjid"),
          ),
          SizedBox(height: 20),

          ListTile(
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 76, 84, 175),
              child: Icon(Icons.volunteer_activism, color: Colors.white),
            ),
            title: Text("Bonar"),
            subtitle: Text("Rp. 100.00 - Santunan Anak Yatim"),
          ),
          SizedBox(height: 20),

          ListTile(
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 175, 76, 147),
              child: Icon(Icons.volunteer_activism, color: Colors.white),
            ),
            title: Text("Imam"),
            subtitle: Text("Rp. 500.00 - Sedekah Subuh"),
          ),
          SizedBox(height: 20),

          ListTile(
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 175, 76, 76),
              child: Icon(Icons.volunteer_activism, color: Colors.white),
            ),
            title: Text("Adham"),
            subtitle: Text("Rp. 800.00 - Infaq Jumat"),
          ),
          SizedBox(height: 20),

          ListTile(
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 172, 175, 76),
              child: Icon(Icons.volunteer_activism, color: Colors.white),
            ),
            title: Text("Dono"),
            subtitle: Text("Rp. 900.00 - Santunan Anak Yatim"),
          ),
          SizedBox(height: 20),

          ListTile(
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 136, 15, 77),
              child: Icon(Icons.volunteer_activism, color: Colors.white),
            ),
            title: Text("Indro"),
            subtitle: Text("Rp. 700.00 - Jumat Berkah"),
          ),
        ],
      ),
    );
  }
}
