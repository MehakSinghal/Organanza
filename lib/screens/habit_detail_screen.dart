import 'package:Organanza/screens/add_habit_screen.dart';
import 'package:Organanza/widget/habit_detail_item.dart';
import 'package:Organanza/widget/progress.dart';
import 'package:flutter/material.dart';

class HabitDetailScreen extends StatelessWidget {

  Widget _makeRow(Color color, String text){
    return Row(
      children: [
        CircleAvatar(backgroundColor: color,radius: 7,),
        Text(
          text,
          style: TextStyle(
              color: Colors.black,
              fontSize: 17),
        ),
      ],
    );
  }

  Widget _makeIconRow(IconData icon, String text){
    return Row(children: [
      Icon(icon,size: 15,),
      Text(
        text,
        style: TextStyle(
            color: Colors.black,
            fontSize: 17),
      ),
    ],);
  }
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
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
                  bottom: deviceSize.height * 0.06,
                  left: deviceSize.width * 0.05,
                  //right: deviceSize.width * 0.2,
                  child: Image.asset(
                    "assets/undraw_progress_data_4_ebj.png",
                    width: deviceSize.width * 0.3,
                    height: deviceSize.height * 0.11,
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
                            color: Color.fromRGBO(0, 130, 255, 0).withOpacity(1)),
                      )),
                ),
                Positioned(
                  top: deviceSize.height * 0.025,
                  right: deviceSize.width * 0.02,
                  child: IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Color.fromRGBO(203, 58, 33, 1),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=> AddHabitScreen()));
                    },
                  ),
                ),
                Positioned(
                  bottom: deviceSize.height * 0.04,
                  left: deviceSize.width * 0.45,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Workout",
                        style: TextStyle(
                            color: Color.fromRGBO(0, 130, 255, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                      ),
                      _makeRow(Colors.green, " 1 Aug 2020"),
                      _makeRow(Colors.red, " 1 Aug 2020"),
                      _makeIconRow(Icons.access_time, " Mon Fri Sat"),
                      _makeIconRow(Icons.notifications_active, " 9:00 AM ")
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: deviceSize.height * 0.02,
            ),
            HabitDetailItem(),
            Progress(),
          ],
        ),
      ),
    );
  }
}
