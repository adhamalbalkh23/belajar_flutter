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
     floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: const Icon(Icons.camera),
        onPressed: () {
          setState(() {
            counter ++;
            
          });
        },
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
            
            child: Image.network("https://berbagikebaikan.or.id/wp-content/uploads/2024/05/sedekah-subuh.jpeg",height: 150,),
            
          ),
          
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

            Container(
                padding: const EdgeInsets.all(20),
                color: Colors.orange.shade200,
                child: Text(
                  "Counter: $counter",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
        ]


      ),
    ),
  );  
}
}