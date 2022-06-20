import 'package:dacx_wallet_layouts/main_layout_screen/get_cards.dart';
import 'package:dacx_wallet_layouts/main_layout_screen/main_layout_screen.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_bar/bottom_screen_1.dart';
import 'bottom_navigation_bar/bottom_screen_2.dart';
import 'bottom_navigation_bar/bottom_screen_3.dart';
import 'main_layout_screen/current_balance_mls.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Menu'),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainLayoutScreen(),
                    ),
                  );
                },
                child: const Text('Main Layout Screen'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GetCards(),
                    ),
                  );
                },
                child: const Text('Get Cards'),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CurrentBalanceMainScreenLayout(),
                    ),
                  );
                },
                child: const Text('Current Balance Main Layout'),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNavigationBarScreen(),
                    ),
                  );
                },
                child: const Text('Bottom Navigation Bar # 1'),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNavigationBarScreen2(),
                    ),
                  );
                },
                child: const Text('Bottom Navigation Bar # 2'),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNavigationBarScreen3(),
                    ),
                  );
                },
                child: const Text('Bottom Navigation Bar # 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
