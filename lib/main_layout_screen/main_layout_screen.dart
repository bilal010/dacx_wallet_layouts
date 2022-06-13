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
                height: 100,
                width: double.infinity,
                color: const Color(0xff051094),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Icon(Icons.arrow_back_outlined, color: Colors.white,),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(/*horizontal: 80.0,*/ vertical: 20.0),
                      child: Text(
                        'My Accounts',
                        style: TextStyle(fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Icon(Icons.abc, color: Colors.transparent,)
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
