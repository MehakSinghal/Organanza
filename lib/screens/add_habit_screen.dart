import 'package:Organanza/widget/add_habit_item.dart';
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
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  bottom: deviceSize.height * 0.03,
                  left: deviceSize.width * 0.2,
                  right: deviceSize.width * 0.2,
                  child: Image.asset(
                    "assets/undraw_happy_feeling_slmw.png",
                    width: deviceSize.width * 0.7,
                    height: deviceSize.height * 0.18,
                  ),
                ),
                Positioned(
                  top: deviceSize.height * 0.02,
                  child: FlatButton.icon(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.keyboard_arrow_left,
                        color: Color.fromRGBO(0, 130, 255, 0).withOpacity(1),
                      ),
                      label: Text(
                        "Back",
                        style: TextStyle(
                            color:
                                Color.fromRGBO(0, 130, 255, 0).withOpacity(1)),
                      )),
                )
              ],
            ),
            SizedBox(
              height: deviceSize.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(left: deviceSize.width*0.35),
              child: Text(
                "New Habit",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 130, 255, 0).withOpacity(1),
                    fontSize: 30),
              ),
            ),
            /*SizedBox(
              height: deviceSize.height * 0.01,
            ),*/
            AddHabitItem(),
          ],
        ),
    );
  }
}
