import 'package:Organanza/model/progress_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Progress extends StatefulWidget {
  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  List<Color> colors = [
    Color.fromRGBO(0, 130, 255, 1),
    Color.fromRGBO(229, 243, 255, 1)
  ];

  List<charts.Series> data;

  static List<charts.Series<ProgressData, String>> _createData() {
    final transactionData = [
      ProgressData(month: "Jan", progress: 4000),
      ProgressData(month: "Feb", progress: 2000),
      ProgressData(month: "Mar", progress: 1000),
      ProgressData(month: "Apr", progress: 6000),
      ProgressData(month: "May", progress: 400),
      ProgressData(month: "Jun", progress: 900),
      ProgressData(month: "Jul", progress: 100),
      ProgressData(month: "Aug", progress: 3200),
      ProgressData(month: "Sep", progress: 5225),
      ProgressData(month: "Oct", progress: 1205),
      ProgressData(month: "Nov", progress: 895),
      ProgressData(month: "Dec", progress: 440),
    ];
    return [
      charts.Series<ProgressData, String>(
        id: "id",
        domainFn: (ProgressData t, _) => t.month,
        measureFn: (ProgressData t, _) => t.progress,
        data: transactionData,
        fillColorFn: (ProgressData t, _) =>
            charts.Color.fromHex(code: '#0082FF'),
      )
    ];
  }

  @override
  void initState() {
    data = _createData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
          horizontal: deviceSize.width * 0.06,
          vertical: deviceSize.height * 0.02),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "PROGRESS",
            style: TextStyle(
                color: Color.fromRGBO(0, 130, 255, 1),
                fontWeight: FontWeight.bold,
                fontSize: 23),
          ),
          Container(
            height: deviceSize.height * 0.22,
            width: deviceSize.width * 0.9,
            margin: EdgeInsets.symmetric(
              vertical: deviceSize.height * 0.02,
            ),
            //color: Colors.yellow,
            child: PieChart(
              animationDuration: Duration(milliseconds: 1200),
              chartRadius: deviceSize.height * 0.5,
              chartType: ChartType.ring,
              dataMap: {
                "Completed in this month": 70,
                "Did not complete in this month": 30,
              },
              showLegends: true,
              legendPosition: LegendPosition.right,
              initialAngle: 0,
              colorList: colors,
            ),
          ),
          Container(
            height: deviceSize.height * 0.32,
            width: deviceSize.width,
            margin: EdgeInsets.symmetric(
              vertical: deviceSize.height * 0.02,
            ),
            child: charts.BarChart(
              data,
              animate: true,
              vertical: true,
              animationDuration: Duration(milliseconds: 1200),
            ),
          )
        ],
      ),
    );
  }
}
