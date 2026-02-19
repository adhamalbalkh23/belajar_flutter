import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tugas5 extends StatefulWidget {
  const Tugas5({super.key});

  @override
  State<Tugas5> createState() => _Tugas5State();
}

class _Tugas5State extends State<Tugas5 > {
  bool showNama = false;
  bool isFavorite = false;
  bool showDetail = false;
  bool showKotakText = false;
  
   int counter = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Tugas 5",style: TextStyle(
            fontSize: 20,fontWeight: FontWeight.bold
          ),
          ),
        ],
      ),
      backgroundColor: Colors.red
    ),
  
         body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      showNama = !showNama;
                   }
                   );
                  },
                  child: const Text("Tampilkan Nama"),
                  ),

              if (showNama)
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child:Center(
                 child: Text("Nama saya Adham"),
                ),
                ),

              SizedBox(height: 24),

              Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.symmetric(vertical: 8),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: const Text("Sedekah Subuh",style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: IconButton(
                    icon: const Icon(Icons.bookmark),
                    color: isFavorite ? Colors.red : Colors.grey,
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                  ),
                ),

                TextButton(
                  onPressed: () {
                    setState(() {
                      showDetail = !showDetail;
                    });
                  },
                  child: const Text("Lihat Selengkapnya"),
                ),

                if (showDetail)
                  const Padding(
                    padding: EdgeInsets.all(18),
                    child: Text(
                      "Sedekah subuh rutin selama 40 hari adalah amalan istimewa yang diyakini mampu mempercepat terkabulnya doa",
                    ),
                  ),
              ],
            ),
          ),

                InkWell(
                  onTap: () {
                    print("Gambar diklik");
                  },
                  child: ClipRRect(borderRadius: BorderRadius.circular(20),
                  child: Image.network("https://berbagikebaikan.or.id/wp-content/uploads/2024/05/sedekah-subuh.jpeg",),
                  ),
                  ),
                
                SizedBox(height: 18),

                GestureDetector(
                  onTap: () {
                    print("Disentuh Sekali");
                  },
                  onDoubleTap: () {
                    print("Disentuh dua kali");
                    },
                  onLongPress: () {
                    print("Tahan lama");
                  },  
                child: Container(
                  color: Colors.redAccent,
                  padding: EdgeInsets.all(16),
                  child: Text("Donasi Sekarang"),
                ), 
                ),
                SizedBox(height: 18),
        
            Container(
            margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.symmetric(vertical: 8),
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
            child: Column(
              children: [

                Text(
                  "Total Donasi Terkumpul:",
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  "Rp ${counter.toString()}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    // Kurang
                    
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (counter >= 50000) {
                            counter -= 50000;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      child: const Text("- 50.000"),
                    ),

                    const SizedBox(width: 15),

                    // Tambah

                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          counter += 50000;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: const Text("+ 50.000"),
                    ),

                  ],
                ),
              ],
            ),
          ),
         
         
    
        ]
    


      ),
    ),
  );  
}
}