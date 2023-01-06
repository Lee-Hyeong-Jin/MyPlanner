import 'package:flutter/material.dart';
import 'package:planner/views/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final widgetOptions = [
    const Home(),
    const Text('Alarm'),
    const Text('TimeSchedule'),
    const Text('Calendar'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF383F51),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: widgetOptions.elementAt(selectedIndex),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.white, width: 0.5))
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF383F51),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.schedule), label: "schedule"),
            BottomNavigationBarItem(icon: Icon(Icons.today), label: "today"),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: "calendar"),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white30,
          onTap: onItemTapped,
        ),
      )
    );
  }

  void onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }
}
