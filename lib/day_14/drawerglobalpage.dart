
import 'package:belajar_flutter/day_14/donaturpage.dart';
import 'package:belajar_flutter/day_14/listmap_page.dart';
import 'package:belajar_flutter/day_14/listpage.dart';
import 'package:belajar_flutter/day_15/registerpage2.dart';
import 'package:belajar_flutter/day_16/database/preference.dart';
import 'package:belajar_flutter/day_16/view/loginpage2.dart';
import 'package:belajar_flutter/extension/navigator.dart';
import 'package:flutter/material.dart';


class Drawerglobalpage  extends StatefulWidget {
  const Drawerglobalpage ({super.key});

  @override
  State<Drawerglobalpage > createState() => _DrawerState();
}

class _DrawerState extends State<Drawerglobalpage > {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;

  static List<Widget> listwidget = [
    Listpage(),
    ListmapPage(),
    Donaturpage(),
    Registerpage2(),
    
    
    ];
  

  void ontapItemDrawer(int index) {
    setState(() {
      _currentIndex = index;
    });
    _scaffoldkey.currentState?.closeDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Tugas 10 Flutter"),
        leading: InkWell(
          onTap: () => _scaffoldkey.currentState?.openDrawer(),
          child: Icon(Icons.menu),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.lightGreen),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 35, color: Colors.blue),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Hallo adham",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text("Kategori Amal"),
              selected: _currentIndex == 0,
              onTap: () => ontapItemDrawer(0),
            ),
            ListTile(
              leading: Icon(Icons.category_sharp),
              title: Text("Kategori Amal"),
              selected: _currentIndex == 1,
              onTap: () => ontapItemDrawer(1),
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text("Daftar Donatur"),
              selected: _currentIndex == 2,
              onTap: () => ontapItemDrawer(2),
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text("Tugas 10"),
              selected: _currentIndex == 3,
              onTap: () => ontapItemDrawer(3),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              selected: _currentIndex == 4,
              onTap: () {
                PreferenceHandler().deleteIsLogin();
                context.pushAndRemoveAll(Loginpage2());
              }
            ),
          ],
        ),
      ),
      body: listwidget[_currentIndex],
    );
  }
}
