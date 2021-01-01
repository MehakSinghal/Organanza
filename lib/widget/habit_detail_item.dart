import 'package:flutter/material.dart';

class HabitDetailItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          overflow: Overflow.visible,
          children: [
            Container(
              height: deviceSize.height * 0.15,
              width: deviceSize.width * 0.9,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(234, 240, 250, 1),
              ),
            ),
            Positioned(
              left: deviceSize.width * 0.15,
              top: -15,
              child: Image.asset(
                "assets/undraw_winners_ao_2_o_1.png",
                height: deviceSize.height * 0.25,
              ),
            ),
            Positioned(
              left: deviceSize.width*0.05,
              top: deviceSize.height*0.01,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Current",
                    style: TextStyle(
                        color: Color.fromRGBO(203, 58, 33, 1),
                        fontWeight: FontWeight.w400,fontSize: 27),
                  ),
                  Text(
                    "Streak",
                    style: TextStyle(
                        color: Color.fromRGBO(203, 58, 33, 1),
                        fontWeight: FontWeight.w400,fontSize: 27),
                  ),
                  Text(
                    "4",
                    style: TextStyle(
                        color: Color.fromRGBO(203, 58, 33, 1),
                        fontWeight: FontWeight.bold,fontSize: 30),
                  )
                ],
              ),
            ),
            Positioned(
              right: deviceSize.width*0.05,
              top: deviceSize.height*0.01,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Best",
                    style: TextStyle(
                        color: Color.fromRGBO(203, 58, 33, 1),
                        fontWeight: FontWeight.w400,fontSize: 27),
                  ),
                  Text(
                    "Streak",
                    style: TextStyle(
                        color: Color.fromRGBO(203, 58, 33, 1),
                        fontWeight: FontWeight.w400,fontSize: 27),
                  ),
                  Text(
                    "10",
                    style: TextStyle(
                        color: Color.fromRGBO(203, 58, 33, 1),
                        fontWeight: FontWeight.bold,fontSize: 30),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
