import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'main_menu.dart';

/*void main() {
  runApp(
    DevicePreview(
      //enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    )
  );
}*/


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.redAccent
        //primarySwatch: Colors.blue,
      ),
      home: const MainMenu(),
    );
  }
}


