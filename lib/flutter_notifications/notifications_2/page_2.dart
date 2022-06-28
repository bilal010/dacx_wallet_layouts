import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final String? payload;

  const Page2({
    Key? key,
    required this.payload,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page - Notification 2'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              payload ?? '',
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const Text('Second Page - Notification 2')
          ],
        ),
      ),
    );
  }
}
