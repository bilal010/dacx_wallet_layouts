import 'package:flutter/material.dart';

class CurrentBalanceMainScreenLayout extends StatefulWidget {
  const CurrentBalanceMainScreenLayout({Key? key}) : super(key: key);

  @override
  State<CurrentBalanceMainScreenLayout> createState() =>
      _CurrentBalanceMainScreenLayoutState();
}

class _CurrentBalanceMainScreenLayoutState
    extends State<CurrentBalanceMainScreenLayout> {
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
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0, /*left: 5.0*/
                ),
                height: 400,
                width: double.infinity,
                color: const Color(0xff051094),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.white,
                      ),
                    ),
                    //const SizedBox(width: 25.0),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        'My Accounts',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.settings, color: Colors.white,),
                    )
                  ],
                ),
              ),
            ),
            Positioned.fill(
              top: 200.0,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                      ),
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    top: -100,
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15.0),
                      width: double.infinity,
                      height: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        //color: Colors.blueGrey[200],
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 0, // extend the shadow
                            blurRadius: 5, // soften the shadow
                            offset: const Offset(
                                0, 0), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
