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
    viewportFraction: 0.9,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomizableMainScreenLayout(
        icon: Icons.arrow_back_outlined,
        heading: 'Get Cards',
        child: Container(
          padding: const EdgeInsets.only(
            /*left: 5.0, right: 5.0,*/
            top: 30.0,
            bottom: 50.0,
          ),
          child: PageView(
            pageSnapping: true,
            //padEnds: true,
            controller: controller,
            physics: const BouncingScrollPhysics(),
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
                      spreadRadius: 0, // extend the shadow
                      blurRadius: 5, // soften the shadow
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: selectCardContents(
                  'DACX Basic',
                  '\$ 7.99/M',
                  Colors.grey.shade300,
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
                      spreadRadius: 0, // extend the shadow
                      blurRadius: 5, // soften the shadow
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: selectCardContents(
                    'DACX Gold', '\$ 9.99/M', Colors.orangeAccent.shade400),
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
                      spreadRadius: 0, // extend the shadow
                      blurRadius: 5, // soften the shadow
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: selectCardContents(
                    'DACX Platinum', '\$ 11.99/M', Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget selectCardContents(
      String cardType, String monthlyAmount, Color color) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: color,
            ),
          ),
          Divider(
            color: Colors.grey[250],
            height: 15,
            thickness: 1,
            indent: 5,
            endIndent: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cardType,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                monthlyAmount,
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.orange,
                ),
              )
            ],
          ),
          Divider(
            color: Colors.grey[250],
            height: 15,
            thickness: 1,
            indent: 5,
            endIndent: 5,
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
              side: const BorderSide(color: Colors.grey, width: 1.0),
            ),
            child: const ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xff051094),
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                ),
              ),
              title: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                maxLines: 2,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(color: Colors.grey, width: 1.0)),
            child: const ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xff051094),
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                ),
              ),
              title: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                maxLines: 2,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(color: Colors.grey, width: 1.0)),
            child: const ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xff051094),
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                ),
              ),
              title: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                maxLines: 2,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  primary: const Color(0xff051094)),
              child: const Text('Apply for new card'),
            ),
          )
        ],
      ),
    );
  }
}
