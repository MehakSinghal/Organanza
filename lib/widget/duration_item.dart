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
              });
            },
          ),
        ),
        Container(
          width: deviceSize.width * 0.5,
          height: deviceSize.height * 0.05,
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
              });
            },
          ),
        ),
        if (_isSpecific || _isCustom)
          Container(
            height: deviceSize.height*0.05,
            margin: EdgeInsets.only(top: deviceSize.height * 0.01),
            decoration: BoxDecoration(
                border:
                    Border.all(color: Color.fromRGBO(203, 58, 33, 1), width: 2),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: RaisedButton(
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Text(
                "  Done!  ",
                style: TextStyle(color: Color.fromRGBO(203, 58, 33, 1),fontSize: 18),
              ),
              onPressed: () {},
            ),
          )
      ],
    );
  }
}
