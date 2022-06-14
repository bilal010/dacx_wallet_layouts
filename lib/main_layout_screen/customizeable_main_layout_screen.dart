import 'package:flutter/material.dart';

class CustomizableMainScreenLayout extends StatelessWidget {

  final String heading;
  final Widget child;
  final IconData? icon;

  const CustomizableMainScreenLayout({
    Key? key,
    this.icon,
    required this.heading,
    required this.child,
  }) : super(key: key);

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
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 5.0),
                height: 100,
                width: double.infinity,
                color: const Color(0xff051094),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(icon, color: Colors.white),
                    ),
                    const SizedBox(width: 25.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        heading,
                        style: const TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    //const Icon(Icons.abc, color: Colors.transparent,)
                  ],
                ),
              ),
            ),
            Positioned.fill(
              top: 61.0,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                  color: Colors.white,
                ),
                child: child,
              ),
            )
          ],
        ),
      ),
    );
  }
}
