import 'package:flutter/material.dart';
import 'package:fyp_urdu_app/Screens/tutorialScreen.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 8,
      navigateAfterSeconds: tutorialPage(),
      image: Image.asset("assets/logo.png"),
      photoSize: 150,
      title: Text("Numeric and Date Expression Detection",
      textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.white
      ),
      ),
      loadingText: Text("Loading",
          style: TextStyle(
          fontSize: 20.0,
          color: Colors.white
      ),),
      backgroundColor: Color(0xff008000),

    );
  }
}
