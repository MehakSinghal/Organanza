import 'package:flutter/material.dart';

class HomeScreenItem extends StatelessWidget {
  int length;

  HomeScreenItem(this.length);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (ctx, i) => Container(
        margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
        padding: EdgeInsets.all(12),
        width: deviceSize.width,
        height: deviceSize.height * 0.13,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Color.fromRGBO(229, 243, 255, 0).withOpacity(1)),
        child: Row(
          children: [
            Container(
              width: deviceSize.width * 0.22,
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Color.fromRGBO(0, 130, 255, 0).withOpacity(1)),
              child: Column(children: [
                Text("Task No.",style: TextStyle(fontSize: 12,color: Colors.white),),
                SizedBox(height: deviceSize.height*0.005,),
                Text("1",style: TextStyle(fontSize: 35,color: Colors.white),),
              ],),
            )
          ],
        ),
      ),
      itemCount: length,
    );
  }
}
