import 'package:flutter/material.dart';
import 'package:fyp_urdu_app/Screens/splashScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fyp_urdu_app/Screens/workScreen.dart';

import 'Screens/about.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales,

      title: 'Urdu app for Numeric and Date expression',
      debugShowCheckedModeBanner: false,

      home: SplashPage(),
    );
  }
}