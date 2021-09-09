// import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/Controllers/calculate_controller.dart';
import 'package:test_app/Screens/splashscreen.dart';

import 'Screens/calculator_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      home: Splashscreen(),
    );
  }
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text("Text"),
          )
        ],
      ),
    );
  }
}
