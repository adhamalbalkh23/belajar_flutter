import 'package:flutter/material.dart';

class Day7 extends StatelessWidget {
  const Day7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Masjid Nuruul Falaah'),
      centerTitle: true,
      backgroundColor: Colors.green
    ),

    body: Column(
      children: [
        Center(
          child: Text("Masjid Nuruul Falaah",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.green),
          ),
        ),

        Container(
          padding: EdgeInsets.all(10),
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon (Icons.mail, color: Colors.green),
                  SizedBox(width: 10),  
                  Text("Email: info@masjidnuruulfalaah.com",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black),
                      ),
                ],
              ),
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.all(10),
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon (Icons.phone, color: Colors.green),
                  SizedBox(width: 10),  
                  Text("Telepon: +62 361 123456",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black),
                      ),
                ],
              ),
            ],
          ),  
          ),

          SizedBox(height: 20),
          Row(children: [
            Text("Adham Albalkh ", style:TextStyle(fontSize: 15,)),
            Spacer(),
            Text("Admin Masjid", style:TextStyle(fontSize: 15,)),
          ],),
          
          Center(
          child: Text("DAFTAR AMAL",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.green),
          ),
        ),

          SizedBox(height: 20),
          Row(
            children: [
              Expanded( 
                child: Container(
                  height: 60,
                  margin: EdgeInsets.symmetric( horizontal: 40),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(  10),

                  ),
                  child: Text("Sedekah", style: TextStyle(color: Colors.white, fontSize: 16),),
                  alignment: Alignment.center,
                ),

              ),
              Expanded(
                child: Container(
                  height: 60,
                  margin: EdgeInsets.symmetric( horizontal: 40),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Infaq", style: TextStyle(color: Colors.white, fontSize: 16),),
                  alignment: Alignment.center,
                ),
              ),
          ],),

      
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child:
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Sedekah membantu kita semua,sedekah menguatkan yang lemah dan menenagkan yang memberi sedekah,dan dengan sedekah kebersamaan kita tumbuh",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                  ),
                ),
              ),


          ],
          ),

          SizedBox(height: 50),
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              color:const Color.fromARGB(255, 236, 240, 243),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset("assets/images/logo masjid.png")
            ),
          ),

          ],
    ),
    );

  }
}

      
    
    

  


