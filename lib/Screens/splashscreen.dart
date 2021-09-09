import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart' show DateFormat;
// import 'calculator_screen.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    var timeNow = int.parse(DateFormat('kk').format(now));
    // ignore: unused_local_variable
    var message = '';
    if (timeNow <= 12) {
      message = 'Good Morning ';
    } else if ((timeNow > 12) && (timeNow <= 16)) {
      message = 'Good Afternoon';
    } else if ((timeNow > 16) && (timeNow < 20)) {
      message = 'Good evening';
    } else {
      message = 'Good Night';
    }

    return Scaffold(
        body: AnimatedSplashScreen(
            duration: 3000,
            splash: Text(
              message,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            nextScreen: Home(),
            splashTransition: SplashTransition.fadeTransition,
            // pageTransitionType: PageTransitionType.scale,
            backgroundColor: Colors.blue));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
