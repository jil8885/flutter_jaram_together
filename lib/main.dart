import 'package:flutter/material.dart';
import 'package:flutter_jaram_together/screens/welcome_screen.dart';
import 'package:flutter_jaram_together/style/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '너팟내팟',
      theme: ThemeData(
        primarySwatch: wskyBlueCrystalM,
        cardColor: wmintCream,
        accentColor: wskyBlueCrystal,
        cursorColor: Colors.brown,
        textTheme: TextTheme(
          display2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}
