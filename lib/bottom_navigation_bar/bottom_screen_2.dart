import 'package:dacx_wallet_layouts/main_layout_screen/customizeable_main_layout_screen.dart';
import 'package:flutter/material.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

class BottomNavigationBarScreen2 extends StatefulWidget {
  const BottomNavigationBarScreen2({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen2> createState() =>
      _BottomNavigationBarScreen2State();
}

class _BottomNavigationBarScreen2State
    extends State<BottomNavigationBarScreen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          title: const Text("Bottom Navigation Bar"),
          backgroundColor: const Color(0xff051094),
        ),
        //Adding SpinCircleBottomBarHolder to body of Scaffold
        body: SpinCircleBottomBarHolder(
          bottomNavigationBar: SCBottomBarDetails(
              circleColors: [const Color(0xff0614b9), const Color(0xff051094), const Color(0xff040d76)],
              iconTheme: const IconThemeData(color: Colors.black45),
              activeIconTheme: const IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              titleStyle: const TextStyle(color: Colors.black45, fontSize: 12),
              activeTitleStyle: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              actionButtonDetails: SCActionButtonDetails(
                color: const Color(0xff3d4cf8),
                icon: const Icon(
                  Icons.send_outlined,
                  color: Colors.white,
                ),
                elevation: 6.0,
              ),
              elevation: 2.0,
              items: [
                // Suggested count : 4
                SCBottomBarItem(
                  icon: Icons.home,
                  title: "Home",
                  onPressed: () {},
                ),
                SCBottomBarItem(
                  icon: Icons.person,
                  title: "Account",
                  onPressed: () {},
                ),
                SCBottomBarItem(
                  icon: Icons.wallet_outlined,
                  title: "Wallet",
                  onPressed: () {},
                ),
                SCBottomBarItem(
                  icon: Icons.money_outlined,
                  title: "Wealth",
                  onPressed: () {},
                ),
              ],
              circleItems: [
                //Suggested Count: 2
                SCItem(
                  icon: const Icon(Icons.monetization_on, color: Colors.white,),
                  onPressed: () {},
                ),
                SCItem(
                  icon: const Icon(Icons.ac_unit_outlined, color: Colors.white,),
                  onPressed: () {},
                ),
              ],
              bnbHeight: 80 // Suggested Height 80
              ),
          child: Container(
            color: Colors.white,
            child: const Center(
              child: Text("Home"),
            ),
          ),
        ),
      ),
    );
  }
}