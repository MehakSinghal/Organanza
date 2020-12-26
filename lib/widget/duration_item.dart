import 'package:flutter/material.dart';

class DurationItem extends StatefulWidget {
  Function toggle;

  DurationItem(this.toggle);

  @override
  _DurationItemState createState() => _DurationItemState();
}

class _DurationItemState extends State<DurationItem> {
  bool _isSpecific = false;
  bool _isCustom = false;
  List<bool> _hasBorder = [false, false, false, false, false, false, false];
  List<String> _letters = ["M", "T", "W", "Th", "F", "Sa", "Su"];

  Widget _makeContainer(double d, int i) {
    return InkWell(
      child: Container(
        height: d,
        width: d,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color.fromRGBO(229, 243, 255, 1),
            border: _hasBorder[i]
                ? Border.all(color: Color.fromRGBO(0, 130, 255, 1), width: 2)
                : null,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Text(
          _letters[i],
          style: TextStyle(
              color: Color.fromRGBO(0, 130, 255, 1),
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
      onTap: () {
        setState(() {
          _hasBorder[i] = !_hasBorder[i];
        });
      },
    );
  }

  Widget _doneButton(double h, double m) {
    return Container(
      height: h,
      margin: EdgeInsets.only(top: m),
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromRGBO(203, 58, 33, 1), width: 2),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: RaisedButton(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Text(
          "  Done!  ",
          style: TextStyle(color: Color.fromRGBO(203, 58, 33, 1), fontSize: 18),
        ),
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: deviceSize.width * 0.5,
          height: deviceSize.height * 0.05,
          margin: EdgeInsets.only(bottom: deviceSize.height * 0.01),
          child: RaisedButton(
            child: Text(
              "Everyday",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            color: Color.fromRGBO(0, 130, 255, 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            onPressed: () {
              widget.toggle("Everyday");
            },
          ),
        ),
        Container(
          width: deviceSize.width * 0.5,
          height: deviceSize.height * 0.05,
          margin: EdgeInsets.only(bottom: deviceSize.height * 0.01),
          child: RaisedButton(
            child: Text(
              "Specific Days",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            color: Color.fromRGBO(0, 130, 255, 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            onPressed: () {
              setState(() {
                _isSpecific = !_isSpecific;
                _isCustom = false;
              });
            },
          ),
        ),
        Container(
          width: deviceSize.width * 0.5,
          height: deviceSize.height * 0.05,
          margin: EdgeInsets.only(bottom: deviceSize.height * 0.015),
          child: RaisedButton(
            child: Text(
              "Custom",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            color: Color.fromRGBO(0, 130, 255, 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            onPressed: () {
              setState(() {
                _isCustom = !_isCustom;
                _isSpecific = false;
              });
            },
          ),
        ),
        if (_isSpecific)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _makeContainer(deviceSize.height * 0.05, 0),
              _makeContainer(deviceSize.height * 0.05, 1),
              _makeContainer(deviceSize.height * 0.05, 2),
              _makeContainer(deviceSize.height * 0.05, 3),
              _makeContainer(deviceSize.height * 0.05, 4),
              _makeContainer(deviceSize.height * 0.05, 5),
              _makeContainer(deviceSize.height * 0.05, 6),
            ],
          ),
        if(_isCustom)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: deviceSize.height * 0.05,
                width: deviceSize.height * 0.05,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 10,bottom: 6),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(229, 243, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: TextField(
                  style: TextStyle(color: Color.fromRGBO(0, 130, 255, 1),fontSize: 20),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    counterText: ""
                  ),
                  maxLength: 2,
                )
              ),
              Text("times a ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
              Container(
                height: deviceSize.height * 0.05,
                width: deviceSize.width*0.25,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(229, 243, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: DropdownButton(
                  onChanged: (_){},
                  style: TextStyle(color: Color.fromRGBO(0, 130, 255, 1),fontSize: 19),
                  icon: Icon(Icons.keyboard_arrow_down,color: Color.fromRGBO(0, 130, 255, 1),size: 27,),
                  underline: Container(color: Colors.transparent),
                  items: [
                  DropdownMenuItem(
                    child: Text("week"),
                  ),
                  DropdownMenuItem(
                    child: Text("month"),
                  ),
                ],),
              )
            ],
          ),
        if (_isCustom || _isSpecific)
          _doneButton(deviceSize.height * 0.05, deviceSize.height * 0.01),
      ],
    );
  }
}
