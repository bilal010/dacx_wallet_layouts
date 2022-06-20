import 'package:animated_floating_buttons/widgets/animated_floating_action_button.dart';
import 'package:flutter/material.dart';


class BottomNavigationBarScreen3 extends StatefulWidget {
  const BottomNavigationBarScreen3({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen3> createState() => _BottomNavigationBarScreen3State();
}

class _BottomNavigationBarScreen3State extends State<BottomNavigationBarScreen3> {

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Account Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Wallet Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Wealth Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  /// when you want to close the menu you have to create
  final GlobalKey<AnimatedFloatingActionButtonState> key =GlobalKey<AnimatedFloatingActionButtonState>();
  /// and then assign it to the our widget library
  Widget float1() {
    return Container(
      child: const FloatingActionButton(
        onPressed: null,
        heroTag: "btn1",
        tooltip: 'First button',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget float2() {
    return Container(
      child: const FloatingActionButton(
        onPressed: null,
        heroTag: "btn2",
        tooltip: 'Second button',
        child: Icon(Icons.add),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Flutter BottomNavigationBar Example'),
          backgroundColor: Colors.green
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: AnimatedFloatingActionButton(
        //Fab list
          fabButtons: <Widget>[
            float1(), float2()
          ],
          key : key,
          colorStartAnimation: Colors.blue,
          colorEndAnimation: Colors.red,
          animatedIconData: AnimatedIcons.menu_close //To principal button
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                tooltip: 'Home',
                backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                tooltip: 'Account',
                backgroundColor: Colors.yellow
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet_outlined),
              tooltip: 'Wallet',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on),
              tooltip: 'Wealth',
              backgroundColor: Colors.blue,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5
      ),
    );
  }
}
