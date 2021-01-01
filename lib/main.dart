import 'package:Organanza/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
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
// Color.fromRGBO(0, 130, 255, 1), blue dark
// Color.fromRGBO(229, 243, 255, 1), blue light
// Color.fromRGBO(205, 210, 217, 1), grey dark
// Color.fromRGBO(234, 240, 250, 1), grey light
// Color.fromRGBO(203, 58, 33, 1), red