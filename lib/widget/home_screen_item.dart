import 'package:flutter/material.dart';

class HomeScreenItem extends StatelessWidget {
  int length;

  HomeScreenItem(this.length);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (ctx, i) => Container(
        margin: EdgeInsets.only(
            bottom: deviceSize.height * 0.01,
            left: deviceSize.width * 0.03,
            right: deviceSize.width * 0.03),
        padding: EdgeInsets.all(deviceSize.height * 0.01),
        width: deviceSize.width,
        height: deviceSize.height * 0.13,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Color.fromRGBO(229, 243, 255, 0).withOpacity(1)),
        child: Row(
          children: [
            Container(
              width: deviceSize.width * 0.22,
              padding: EdgeInsets.only(top: deviceSize.height * 0.02),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Color.fromRGBO(0, 130, 255, 0).withOpacity(1)),
              child: Column(
                children: [
                  Text(
                    "Task No.",
                    style: TextStyle(
                        fontSize: deviceSize.height * 0.015,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: deviceSize.height * 0.005,
                  ),
                  Text(
                    (i + 1).toString(),
                    style: TextStyle(
                        fontSize: deviceSize.height * 0.04,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: deviceSize.width*0.015),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "TITLE",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: deviceSize.height * 0.03,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: deviceSize.width*0.35,),
                      Text(
                        "2/3",
                        style: TextStyle(
                            color: Color.fromRGBO(0, 130, 255, 0).withOpacity(1),
                            fontSize: deviceSize.height * 0.03,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    " 3 days a week",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: deviceSize.height * 0.015,
                      fontWeight: FontWeight.w500
                        ),
                  ),
                  Row(
                    children: [
                      Text(
                        " 3 day streak",
                        style: TextStyle(
                            color: Color.fromRGBO(203, 58, 33, 0).withOpacity(1),
                            fontSize: deviceSize.height * 0.015,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: deviceSize.width*0.32,),
                      IconButton(
                        icon: Icon(Icons.keyboard_arrow_right),
                        color: Color.fromRGBO(0, 130, 255, 0).withOpacity(1),
                        iconSize: deviceSize.height*0.038,
                        onPressed: (){},
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      itemCount: length,
    );
  }
}
