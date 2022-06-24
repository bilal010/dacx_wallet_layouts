import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class BottomNavigationBarScreen6 extends StatefulWidget {
  const BottomNavigationBarScreen6({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen6> createState() => _BottomNavigationBarScreen6State();
}

class _BottomNavigationBarScreen6State extends State<BottomNavigationBarScreen6> with TickerProviderStateMixin{

  var renderOverlay = true;
  var visible = true;
  var switchLabelPosition = false;
  var extend = false;
  var rmicons = false;
  var customDialRoot = false;
  var closeManually = false;
  var useRAnimation = true;
  var isDialOpen = ValueNotifier<bool>(false);
  var speedDialDirection = SpeedDialDirection.up;
  var buttonSize = const Size(56.0, 56.0);
  var childrenButtonSize = const Size(56.0, 56.0);


  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
    FourthScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar # 6'),
        elevation: 0,
        backgroundColor: Colors.pink,
      ),

      body: SafeArea(
        bottom: false,
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      // The bottom navigation bar
      bottomNavigationBar: BottomAppBar(
        //color: Colors.pinkAccent.shade100,
        color: Colors.pink.withAlpha(255),
        // this creates a notch in the center of the bottom bar
        shape: const CircularNotchedRectangle(),
        elevation: 0,
        notchMargin: 2,//6
        child: BottomNavigationBar(
          //backgroundColor: Colors.pink,
          backgroundColor: Colors.pink.withAlpha(0),
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Account',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet_outlined),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on),
              label: 'Wealth',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedIconTheme: const IconThemeData(color: Colors.black),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          selectedLabelStyle: const TextStyle(color: Colors.black),
          unselectedLabelStyle: const TextStyle(color: Colors.grey),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          iconSize: 20, //25
          onTap: _onItemTapped,
        ),
      ),
      // implement the floating button
      floatingActionButton: SpeedDial(
        backgroundColor: Colors.pink,
        // animatedIcon: AnimatedIcons.menu_close,
        // animatedIconTheme: IconThemeData(size: 22.0),
        // / This is ignored if animatedIcon is non null
        // child: Text("open"),
        // activeChild: Text("close"),
        //curve: Curves.easeIn,
        icon: Icons.add,
        activeIcon: Icons.close,
        spacing: 3,
        openCloseDial: isDialOpen,
        childPadding: const EdgeInsets.all(5),
        spaceBetweenChildren: 4,
        dialRoot: customDialRoot
            ? (ctx, open, toggleChildren) {
          return ElevatedButton(
            onPressed: toggleChildren,
            style: ElevatedButton.styleFrom(
              primary: Colors.pink,
              padding: const EdgeInsets.symmetric(
                  horizontal: 22, vertical: 18),
            ),
            child: const Text(
              "Custom Dial Root",
              style: TextStyle(fontSize: 17),
            ),
          );
        }
            : null,
        buttonSize: buttonSize, // it's the SpeedDial size which defaults to 56 itself

        // iconTheme: IconThemeData(size: 22),
        label: extend ? const Text("Open") : null, // The label of the main button.

        /// The active label of the main button, Defaults to label if not specified.
        activeLabel: extend ? const Text("Close") : null,

        /// Transition Builder between label and activeLabel, defaults to FadeTransition.
        // labelTransitionBuilder: (widget, animation) => ScaleTransition(scale: animation,child: widget),
        /// The below button size defaults to 56 itself, its the SpeedDial childrens size
        childrenButtonSize: childrenButtonSize,
        visible: visible,
        direction: speedDialDirection,
        switchLabelPosition: switchLabelPosition,

        /// If true user is forced to close dial manually
        closeManually: closeManually,

        /// If false, backgroundOverlay will not be rendered.
        renderOverlay: renderOverlay,
        // overlayColor: Colors.black,
        // overlayOpacity: 0.5,
        onOpen: () => debugPrint('OPENING DIAL'),
        onClose: () => debugPrint('DIAL CLOSED'),
        useRotationAnimation: useRAnimation,
        tooltip: 'Open Speed Dial',
        heroTag: 'speed-dial-hero-tag',
        // foregroundColor: Colors.black,
        // backgroundColor: Colors.white,
        // activeForegroundColor: Colors.red,
        // activeBackgroundColor: Colors.blue,
        elevation: 8.0,
        animationCurve: Curves.elasticInOut,
        isOpenOnStart: false,
        animationDuration: const Duration(milliseconds: 200),
        shape: customDialRoot
            ? const RoundedRectangleBorder()
            : const StadiumBorder(),
        // childMargin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        children: [
          SpeedDialChild(
            child: !rmicons ? const Icon(Icons.arrow_downward_outlined) : null,
            backgroundColor: Colors.pink.shade400,
            foregroundColor: Colors.white,
            label: 'Deposit',
            onTap: () => debugPrint('FIRST CHILD'),
            //onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigationBarScreen4()))
          ),
          SpeedDialChild(
            child: !rmicons ? const Icon(Icons.compare_arrows_outlined) : null,
            backgroundColor: Colors.pink.shade400,
            foregroundColor: Colors.white,
            label: 'Transfer',
            onTap: () => debugPrint('SECOND CHILD'),
          ),
          SpeedDialChild(
            child: !rmicons ? const Icon(Icons.arrow_upward_outlined) : null,
            backgroundColor: Colors.pink.shade400,
            foregroundColor: Colors.white,
            label: 'Withdraw',
            onTap: () => debugPrint('THIRD CHILD'),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Account Screen'),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Wallet Screen'),
      ),
    );
  }
}


class FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Wealth Screen'),
      ),
    );
  }
}