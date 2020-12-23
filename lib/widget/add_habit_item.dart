import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddHabitItem extends StatefulWidget {
  @override
  _AddHabitItemState createState() => _AddHabitItemState();
}

class _AddHabitItemState extends State<AddHabitItem> {
  final _formKey = GlobalKey<FormState>();
  var _switchValue = false;

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: deviceSize.width * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Title",
              style: TextStyle(fontSize: 19),
            ),
            Container(
              height: deviceSize.height * 0.05,
              width: deviceSize.width,
              //margin: EdgeInsets.only(bottom: deviceSize.height*0.02),
              padding:
                  EdgeInsets.symmetric(horizontal: deviceSize.width * 0.02),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(234, 240, 250, 0).withOpacity(1),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            Row(
              children: [
                Text(
                  "Start Date",
                  style: TextStyle(fontSize: 19),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.calendar_today,
                    color: Color.fromRGBO(0, 130, 255, 0).withOpacity(1),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Container(
              height: deviceSize.height * 0.05,
              width: deviceSize.width,
              //margin: EdgeInsets.only(bottom: deviceSize.height*0.02),
              padding:
                  EdgeInsets.symmetric(horizontal: deviceSize.width * 0.02),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(234, 240, 250, 0).withOpacity(1),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            Row(
              children: [
                Text(
                  "End Date",
                  style: TextStyle(fontSize: 19),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.calendar_today,
                    color: Color.fromRGBO(0, 130, 255, 0).withOpacity(1),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Container(
              height: deviceSize.height * 0.05,
              width: deviceSize.width,
              //margin: EdgeInsets.only(bottom: deviceSize.height*0.02),
              padding:
                  EdgeInsets.symmetric(horizontal: deviceSize.width * 0.02),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(234, 240, 250, 0).withOpacity(1),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            Row(
              children: [
                Text(
                  "Duration",
                  style: TextStyle(fontSize: 19),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Color.fromRGBO(0, 130, 255, 0).withOpacity(1),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Container(
              height: deviceSize.height * 0.05,
              width: deviceSize.width,
              //margin: EdgeInsets.only(bottom: deviceSize.height*0.02),
              padding:
                  EdgeInsets.symmetric(horizontal: deviceSize.width * 0.02),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(234, 240, 250, 0).withOpacity(1),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            Row(
              children: [
                Text(
                  "Reminder",
                  style: TextStyle(fontSize: 19),
                ),
                Spacer(),
                CupertinoSwitch(
                  value: _switchValue,
                  activeColor: Color.fromRGBO(0, 130, 255, 0).withOpacity(1),
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                ),
              ],
            ),
            Container(
              height: deviceSize.height * 0.07,
              width: deviceSize.width,
              margin: EdgeInsets.only(top: deviceSize.height * 0.01),
              //decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
              child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                color: Color.fromRGBO(0, 130, 255, 0).withOpacity(1),
                child: Text(
                  "Create Habit",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              height: deviceSize.height * 0.07,
              width: deviceSize.width,
              margin: EdgeInsets.only(top: deviceSize.height * 0.01),
              //decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
              child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                color: Color.fromRGBO(203, 58, 33, 0.35),
                child: Text(
                  "Create Habit",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
