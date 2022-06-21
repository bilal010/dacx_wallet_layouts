import 'package:flutter/material.dart';
import 'package:speed_dial_fab/speed_dial_fab.dart';


class BottomNavigationBarScreen4 extends StatefulWidget {
  const BottomNavigationBarScreen4({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen4> createState() => _BottomNavigationBarScreen4State();
}

class _BottomNavigationBarScreen4State extends State<BottomNavigationBarScreen4> {

  int _selectedScreenIndex = 0;
  final List _screens = [
    {"screen": const Center(child: Text('Screen A')), "title": "Screen A Title"},
    {"screen": const Center(child: Text('Screen B')), "title": "Screen B Title"},
    {"screen": const Center(child: Text('Screen C')), "title": "Screen C Title"},
    {"screen": const Center(child: Text('Screen D')), "title": "Screen D Title"},
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]["title"]),
      ),
      body: _screens[_selectedScreenIndex]["screen"],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SpeedDialFabWidget(
        secondaryIconsList: const [
          Icons.content_copy,
          Icons.content_paste,
          Icons.content_cut,
        ],
        secondaryIconsText: const [
          "copy",
          "paste",
          "cut",
        ],
        secondaryIconsOnPress: [
              () => {},
              () => {},
              () => {},
        ],

        secondaryBackgroundColor: Colors.grey.shade900,
        secondaryForegroundColor: Colors.grey.shade100,
        //primaryBackgroundColor: Colors.grey.shade900,
        //primaryForegroundColor: Colors.grey.shade100,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,
        //selectedIconTheme: const IconThemeData(color: Colors.black),
        //unselectedIconTheme: const IconThemeData(color: Colors.grey),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Screen A'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Screen B"),
          BottomNavigationBarItem(icon: Icon(Icons.settings,), label: "Screen C"),
          BottomNavigationBarItem(icon: Icon(Icons.settings,), label: "Screen D")
        ],
      ),
    );
  }
}
