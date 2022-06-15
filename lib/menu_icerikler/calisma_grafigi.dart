import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../pages/home_page.dart';

class DurumGrafik extends StatelessWidget {
  const DurumGrafik({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Remove the debug banner
        debugShowCheckedModeBanner: false,
        title: 'Haftalık Çalışma Durumum',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: Grafik());
  }
}

class Grafik extends StatelessWidget {
  Grafik({Key? key}) : super(key: key);

  final List<FlSpot> dummyData1 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  // This will be used to draw the orange line
  final List<FlSpot> dummyData2 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  // This will be used to draw the blue line
  final List<FlSpot> dummyData3 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
              icon: Icon(Icons.forward))
        ],
        title: Text('Haftalık Çalışma Durumum'),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          width: 400,
          height: 500,
          //width: double.infinity,
          child: LineChart(
            LineChartData(
              baselineX: 30,
              baselineY: 30,
              borderData: FlBorderData(show: false),
              lineBarsData: [
                // The red line
                LineChartBarData(
                  spots: dummyData1,
                  isCurved: true,
                  barWidth: 3,
                  color: Colors.red,
                ),
                // The orange line
                LineChartBarData(
                  spots: dummyData2,
                  isCurved: true,
                  barWidth: 3,
                  color: Colors.orange,
                ),
                // The blue line
                LineChartBarData(
                  spots: dummyData3,
                  isCurved: false,
                  barWidth: 3,
                  color: Colors.blue,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
