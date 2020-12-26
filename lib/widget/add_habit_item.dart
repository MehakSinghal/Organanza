import 'package:Organanza/widget/duration_item.dart';
import 'package:Organanza/widget/reminder_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddHabitItem extends StatefulWidget {
  @override
  _AddHabitItemState createState() => _AddHabitItemState();
}

class _AddHabitItemState extends State<AddHabitItem> {
  final _formKey = GlobalKey<FormState>();
  var _switchValue = false;
  var _makeContainer = false;
  var _makeReminderContainer = false;
  List<String> initValues = ["Today", "Never", " "," "];

  void toggleMakeContainer([String x]) {
    setState(() {
      _makeContainer = !_makeContainer;
      if (x != null) {
        initValues[2] = x;
      }
    });
  }

  void toggleMakeReminderContainer(var val) {
    setState(() {
      _makeReminderContainer = !_makeReminderContainer;
      _switchValue = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Expanded(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              horizontal: deviceSize.width * 0.06,
              vertical: deviceSize.height * 0.01),
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
                    EdgeInsets.symmetric(horizontal: deviceSize.width * 0.04),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(234, 240, 250, 0).withOpacity(1),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TextFormField(
                  style: TextStyle(
                      color: Color.fromRGBO(205, 210, 217, 1),
                      fontWeight: FontWeight.bold),
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
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2022))
                          .then((value) {
                        setState(() {
                          initValues[0] =
                              DateFormat.yMMMd().format(value).toString();
                          print(value);
                        });
                      });
                    },
                  ),
                ],
              ),
              Container(
                  height: deviceSize.height * 0.05,
                  width: deviceSize.width,
                  alignment: Alignment.centerLeft,
                  //margin: EdgeInsets.only(bottom: deviceSize.height*0.02),
                  padding:
                      EdgeInsets.symmetric(horizontal: deviceSize.width * 0.04),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(234, 240, 250, 0).withOpacity(1),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Text(
                    initValues[0],
                    style: TextStyle(
                        color: Color.fromRGBO(205, 210, 217, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
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
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2022))
                          .then((value) {
                        setState(() {
                          initValues[1] =
                              DateFormat.yMMMd().format(value).toString();
                          print(value);
                        });
                      });
                    },
                  ),
                ],
              ),
              Container(
                  height: deviceSize.height * 0.05,
                  width: deviceSize.width,
                  alignment: Alignment.centerLeft,
                  //margin: EdgeInsets.only(bottom: deviceSize.height*0.02),
                  padding:
                      EdgeInsets.symmetric(horizontal: deviceSize.width * 0.04),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(234, 240, 250, 0).withOpacity(1),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Text(
                    initValues[1],
                    style: TextStyle(
                        color: Color.fromRGBO(205, 210, 217, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
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
                      onPressed: () {
                        toggleMakeContainer();
                      }),
                ],
              ),
              Container(
                  height: deviceSize.height * 0.05,
                  width: deviceSize.width,
                  alignment: Alignment.centerLeft,
                  padding:
                      EdgeInsets.symmetric(horizontal: deviceSize.width * 0.04),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(234, 240, 250, 0).withOpacity(1),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Text(
                    initValues[2],
                    style: TextStyle(
                        color: Color.fromRGBO(205, 210, 217, 1),
                        fontWeight: FontWeight.bold),
                  )),
              if (_makeContainer)
                Container(
                  //height: deviceSize.height * 0.2,
                  width: deviceSize.width,
                  margin:
                      EdgeInsets.symmetric(vertical: deviceSize.height * 0.01),
                  padding:
                      EdgeInsets.symmetric(vertical: deviceSize.height * 0.02),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromRGBO(0, 130, 255, 1), width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: DurationItem(toggleMakeContainer),
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
                      toggleMakeReminderContainer(value);
                    },
                  ),
                ],
              ),
              Container(
                  height: deviceSize.height * 0.05,
                  width: deviceSize.width,
                  alignment: Alignment.centerLeft,
                  padding:
                  EdgeInsets.symmetric(horizontal: deviceSize.width * 0.04),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(234, 240, 250, 0).withOpacity(1),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Text(
                    initValues[3],
                    style: TextStyle(
                        color: Color.fromRGBO(205, 210, 217, 1),
                        fontWeight: FontWeight.bold),
                  )),
              if (_makeReminderContainer)
                Container(
                  //height: deviceSize.height * 0.2,
                  width: deviceSize.width,
                  margin:
                      EdgeInsets.symmetric(vertical: deviceSize.height * 0.01),
                  padding:
                      EdgeInsets.symmetric(vertical: deviceSize.height * 0.02),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromRGBO(0, 130, 255, 1), width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: ReminderItem(),
                ),
              Container(
                height: deviceSize.height * 0.07,
                width: deviceSize.width,
                margin: EdgeInsets.only(top: deviceSize.height * 0.01),
                //decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
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
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  color: Color.fromRGBO(203, 58, 33, 0.4),
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
      ),
    );
  }
}
