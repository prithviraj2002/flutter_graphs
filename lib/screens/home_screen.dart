import 'package:flutter/material.dart';
import 'package:flutter_graphs/charts/bar_chart.dart';
import 'package:flutter_graphs/charts/line_chart.dart';
import 'package:flutter_graphs/charts/nested_graph.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
            'Flutter Charts',
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
      body: const SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: 1250,
          child: Wrap(
            direction: Axis.vertical,
            spacing: 20,
            runSpacing: 20,
            children: [
              Text(
                '1) Line Chart',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
              LineChartWidget(),
              Text(
                '2) Bar Chart',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
              BarChartWidget(),
              Text(
                '3) Nested Graph',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
              Stack(
                children: [
                  BarChartWidget(),
                  LineChartWidget(),
                ],
              ),
            ],
          )
        ),
      )
    );
  }
}


