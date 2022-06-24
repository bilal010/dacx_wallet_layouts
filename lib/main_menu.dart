import 'package:dacx_wallet_layouts/bottom_navigation_bar/bottom_screen_6.dart';
import 'package:dacx_wallet_layouts/flutter_notifications/notifications_1/notification_screen1.dart';
import 'package:dacx_wallet_layouts/main_layout_screen/get_cards.dart';
import 'package:dacx_wallet_layouts/main_layout_screen/login_screen.dart';
import 'package:dacx_wallet_layouts/main_layout_screen/main_layout_screen.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_bar/bottom_screen_1.dart';
import 'bottom_navigation_bar/bottom_screen_2.dart';
import 'bottom_navigation_bar/bottom_screen_3.dart';
import 'bottom_navigation_bar/bottom_screen_4.dart';
import 'bottom_navigation_bar/bottom_screen_5.dart';
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
                      builder: (context) => const BottomNavigationBarScreen4(),
                    ),
                  );
                },
                child: const Text('Bottom Navigation Bar # 4'),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNavigationBarScreen5(),
                    ),
                  );
                },
                child: const Text('Bottom Navigation Bar # 5'),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNavigationBarScreen6(),
                    ),
                  );
                },
                child: const Text('Bottom Navigation Bar # 6'),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                child: const Text('Login Screen'),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationScreen1(),
                    ),
                  );
                },
                child: const Text('Notification Screen # 1'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
