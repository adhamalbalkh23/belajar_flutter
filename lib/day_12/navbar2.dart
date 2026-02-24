// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Tugas 8 Flutter")),
//       body: _pagesList[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.grey,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "S&k",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "Switch",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "DD",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "Tgl",
//           ),BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "Jam",
//           ),
//         ],
//       ),