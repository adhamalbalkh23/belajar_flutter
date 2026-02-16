import "package:flutter/material.dart";

class Day8 extends StatelessWidget {
  const Day8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.mosque, color: Colors.white),
            SizedBox(width: 8),
            Text(
              "Donasi Masjid",
              style: TextStyle(
                fontFamily: "times new roman",
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.green,
      ),

      // Form Donatur
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    "Form Donatur",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),

                  TextField(
                    decoration: InputDecoration(
                      labelText: "Nama Lengkap",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Jumlah Donasi",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
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
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 64, 194, 8),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    "Galeri Kegiatan",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),

                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(12),
                            child: Image.asset(
                              "assets/images/logo masjid.png",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white.withOpacity(0.4),
                            ),
                          ),

                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Text(
                              "Kegiatan 1",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Kegiatan 2
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(12),
                            child: Image.asset(
                              "assets/images/logo masjid.png",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white.withOpacity(0.4),
                            ),
                          ),

                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Text(
                              "Kegiatan 2",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Kegiatan 3
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(12),
                            child: Image.asset(
                              "assets/images/logo masjid.png",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white.withOpacity(0.4),
                            ),
                          ),

                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Text(
                              "Kegiatan 3",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Kegiatan 4
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(12),
                            child: Image.asset(
                              "assets/images/logo masjid.png",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white.withOpacity(0.4),
                            ),
                          ),

                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Text(
                              "Kegiatan 4",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Kegiatan 5
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(12),
                            child: Image.asset(
                              "assets/images/logo masjid.png",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white.withOpacity(0.4),
                            ),
                          ),

                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Text(
                              "Kegiatan 5",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Kegiatan 6
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(12),
                            child: Image.asset(
                              "assets/images/logo masjid.png",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white.withOpacity(0.4),
                            ),
                          ),

                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Text(
                              "Kegiatan 6",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
