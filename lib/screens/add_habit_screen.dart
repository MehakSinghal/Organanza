import 'package:flutter/material.dart';

class AddHabitScreen extends StatefulWidget {
  @override
  _AddHabitScreenState createState() => _AddHabitScreenState();
}

class _AddHabitScreenState extends State<AddHabitScreen> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: deviceSize.height * 0.28,
                  width: deviceSize.width,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(229, 243, 255, 0).withOpacity(1),
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(100))),
                ),
                Positioned(
                  bottom: deviceSize.height*0.03,
                  left: deviceSize.width*0.2,
                  right: deviceSize.width*0.2,
                  child: Image.asset(
                    "assets/undraw_happy_feeling_slmw.png",
                    width: deviceSize.width * 0.7,
                    height: deviceSize.height * 0.18,
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 15,
                  child: CircleAvatar(
                    radius: 25,
                  ),
                )
              ],
            ),
            SizedBox(
              height: deviceSize.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
