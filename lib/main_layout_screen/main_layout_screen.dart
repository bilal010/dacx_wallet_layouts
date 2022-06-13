import 'package:flutter/material.dart';

class MainLayoutScreen extends StatelessWidget {
  const MainLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 120,
                width: double.infinity,
                color: Colors.redAccent,
              ),
            ),
            Positioned.fill(
              top: 61.0,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0)
                  ),
                  color: Colors.blueGrey
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
