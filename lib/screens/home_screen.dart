import 'package:Organanza/widget/home_screen_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  width: deviceSize.width ,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(229, 243, 255, 0).withOpacity(1),
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(100))),
                ),
                Positioned(
                  bottom: 20,
                  left: 60,
                  right: 60,
                  child: Image.asset(
                    "assets/undraw_dev_productivity_umsq_1.png",
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
            Padding(
              padding: const EdgeInsets.only(right:170),
              child: Text(
                'Hi , Mehak !',
                style: TextStyle(
                    color: Color.fromRGBO(0, 130, 255, 0).withOpacity(1),
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
            ),
            SizedBox(
              height: deviceSize.height * 0.02,
            ),
            Container(
              width: deviceSize.width ,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Today's Priorities",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                  SizedBox(width: deviceSize.width * 0.15,),
                  RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "+ Add Habit",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(0, 130, 255, 0).withOpacity(1)),
                    ),
                    color: Color.fromRGBO(229, 243, 255, 0).withOpacity(1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        side: BorderSide(
                            color: Color.fromRGBO(0, 130, 255, 0).withOpacity(1),
                            width: 2)),
                  ),
                ],
              ),
            ),
            HomeScreenItem(2),
          ],
        ),
      ),
    );
  }
}
