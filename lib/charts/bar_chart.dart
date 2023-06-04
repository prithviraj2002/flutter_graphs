import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartWidget extends StatefulWidget {
  const BarChartWidget({Key? key}) : super(key: key);

  @override
  State<BarChartWidget> createState() => _BarChartWidgetState();
}

class _BarChartWidgetState extends State<BarChartWidget> {

  List<BarChartGroupData> groups = [
    BarChartGroupData(
        x: 0,
      barRods: [
        BarChartRodData(
            toY: 1,
        ),
      ]
    ),
    BarChartGroupData(
        x: 1,
        barRods: [
          BarChartRodData(
              toY: 3
          ),
        ]
    ),
    BarChartGroupData(
        x: 2,
        barRods: [
          BarChartRodData(
              toY: 10
          ),
        ]
    ),
    BarChartGroupData(
        x: 3,
        barRods: [
          BarChartRodData(
              toY: 7
          ),
        ]
    ),
    BarChartGroupData(
        x: 4,
        barRods: [
          BarChartRodData(
              toY: 12
          ),
        ]
    ),
    BarChartGroupData(
        x: 5,
        barRods: [
          BarChartRodData(
              toY: 13
          ),
        ]
    ),
    BarChartGroupData(
        x: 6,
        barRods: [
          BarChartRodData(
              toY: 17
          ),
        ]
    ),
    BarChartGroupData(
        x: 7,
        barRods: [
          BarChartRodData(
              toY: 15
          ),
        ]
    ),
    BarChartGroupData(
        x: 8,
        barRods: [
          BarChartRodData(
              toY: 20
          ),
        ]
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 370,
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.center,
          groupsSpace: 32,
          barGroups: groups,
          borderData: FlBorderData(
            border: const Border(bottom: BorderSide(), left: BorderSide()),
          ),
          titlesData: FlTitlesData(
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
            gridData: FlGridData(
                show: false
            )
        ),
      ),
    );
  }
}

