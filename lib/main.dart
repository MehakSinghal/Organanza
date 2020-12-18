import 'package:Organanza/screens/home_screen.dart';
import 'package:Organanza/screens/home_screen_empty.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
// Color.fromRGBO(0, 130, 255, 0).withOpacity(1), blue dark
// Color.fromRGBO(229, 243, 255, 0).withOpacity(1), blue light
// Color.fromRGBO(205, 210, 217, 0).withOpacity(1), grey dark
// Color.fromRGBO(234, 240, 250, 0).withOpacity(1), grey light
// Color.fromRGBO(203, 58, 33, 0).withOpacity(1), red