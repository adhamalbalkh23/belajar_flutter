import 'package:belajar_flutter/day_12/checkboxpage.dart';
import 'package:belajar_flutter/day_12/dropdownpage.dart';
import 'package:belajar_flutter/day_12/jampage.dart';
import 'package:belajar_flutter/day_12/switchpage.dart';
import 'package:belajar_flutter/day_12/tglpage.dart';
import 'package:flutter/material.dart';


class Drawerpage extends StatefulWidget {
  const Drawerpage({super.key});

  @override
  State<Drawerpage> createState() => _DrawerState();
}

class _DrawerState extends State<Drawerpage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;

  static List<Widget> listwidget = [
    Checkboxpage(),
    Switchpage(),
    Dropdownpage(),
    Tglpage(),
    Jampage(),
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
        title: Text("Tugas 7 Flutter"),
        leading: InkWell(
          onTap: () => _scaffoldkey.currentState?.openDrawer(),
          child: Icon(Icons.menu),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
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
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("CheckBox"),
              selected: _currentIndex == 0,
              onTap: () => ontapItemDrawer(0),
            ),
            ListTile(
              leading: Icon(Icons.person_2),
              title: Text("Switch"),
              selected: _currentIndex == 1,
              onTap: () => ontapItemDrawer(1),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Dropdown"),
              selected: _currentIndex == 2,
              onTap: () => ontapItemDrawer(2),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Tanggal"),
              selected: _currentIndex == 3,
              onTap: () => ontapItemDrawer(3),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Jam"),
              selected: _currentIndex == 4,
              onTap: () => ontapItemDrawer(4),
            ),
          ],
        ),
      ),
      body: listwidget[_currentIndex],
    );
  }
}
