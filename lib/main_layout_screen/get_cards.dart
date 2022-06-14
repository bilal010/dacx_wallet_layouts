import 'package:dacx_wallet_layouts/main_layout_screen/customizeable_main_layout_screen.dart';
import 'package:flutter/material.dart';

class GetCards extends StatefulWidget {
  const GetCards({Key? key}) : super(key: key);


  @override
  State<GetCards> createState() => _GetCardsState();
}

class _GetCardsState extends State<GetCards> {

  PageController controller = PageController(
      initialPage: 0,
      viewportFraction: 0.9
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomizableMainScreenLayout(
        icon: Icons.arrow_back_outlined,
        heading: 'Get Cards',
        child: Container(
          padding: const EdgeInsets.only(/*left: 5.0, right: 5.0,*/ top: 30.0, bottom: 50.0),
          child: PageView(
            pageSnapping: true,
            //padEnds: true,
            controller: controller,
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                //clipBehavior: Clip.antiAliasWithSaveLayer,
                //height: 80,
                margin: const EdgeInsets.all(5.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  //color: Colors.blueGrey[200],
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 5, // extend the shadow
                      blurRadius: 7, // soften the shadow
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
              ),
              Container(
                //clipBehavior: Clip.antiAliasWithSaveLayer,
                //height: 80,
                margin: const EdgeInsets.all(5.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  //color: Colors.blueGrey[200],
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 5, // extend the shadow
                      blurRadius: 7, // soften the shadow
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
              ),
              Container(
                //clipBehavior: Clip.antiAliasWithSaveLayer,
                //height: 80,
                margin: const EdgeInsets.all(5.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  //color: Colors.blueGrey[200],
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 5, // extend the shadow
                      blurRadius: 7, // soften the shadow
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
              ),
              /*Container(
                //height: 80,
                margin: const EdgeInsets.only(right: 10.0),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.redAccent[200]
                ),
              ),
              Container(
                //height: 80,
                margin: const EdgeInsets.only(right: 10.0),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.greenAccent[200]
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
