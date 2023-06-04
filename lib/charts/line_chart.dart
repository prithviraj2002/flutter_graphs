import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatefulWidget {
  const LineChartWidget({Key? key}) : super(key: key);

  @override
  State<LineChartWidget> createState() => _LineChartWidgetState();
}

class _LineChartWidgetState extends State<LineChartWidget> {
  List<FlSpot> points = const [
    FlSpot(0, 1),
    FlSpot(1, 3),
    FlSpot(2, 10),
    FlSpot(3, 7),
    FlSpot(4, 12),
    FlSpot(5, 13),
    FlSpot(6, 17),
    FlSpot(7, 15),
    FlSpot(8, 20),
  ];

  List<FlSpot> points2 = const [
    FlSpot(1, 0),
    FlSpot(3, 1),
    FlSpot(10, 2),
    FlSpot(7, 3),
    FlSpot(12, 4),
    FlSpot(13, 5),
    FlSpot(17, 6),
    FlSpot(15, 7),
    FlSpot(20, 8),
  ];

  List<FlSpot> points3 = const [
    FlSpot(2, 18),
    FlSpot(1, 17),
    FlSpot(7, 16),
    FlSpot(3, 15),
    FlSpot(2, 14),
    FlSpot(2, 4),
    FlSpot(1, 4),
    FlSpot(1, 3),
    FlSpot(0, 1),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 370,
      height: 300,
      child: LineChart(
        LineChartData(
            lineBarsData: [
          LineChartBarData(
              spots: points,
            color: Colors.red
            ),
          ],
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


