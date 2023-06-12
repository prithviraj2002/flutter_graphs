import 'package:flutter/material.dart';
import 'package:flutter_graphs/charts/bar_chart.dart';
import 'package:flutter_graphs/charts/line_chart.dart';
import 'package:flutter_graphs/charts/nested_graph.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int animate = 1;

  void change(){
    setState((){
      animate == 1 ? animate = 2 : animate = 1;
    });
  }

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
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: 1250,
          child: Wrap(
            direction: Axis.vertical,
            spacing: 20,
            runSpacing: 20,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '1) Line Chart',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                  TextButton(
                      onPressed: change,
                      child: const Text('Animate', style: TextStyle(color: Colors.blue),)
                  )
                ],
              ),
              LineChartWidget(a: animate,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '2) Bar Chart',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                  TextButton(
                      onPressed: change,
                      child: const Text('Animate', style: TextStyle(color: Colors.blue),)
                  )
                ],
              ),
              BarChartWidget(a: animate),
              const Text(
                '3) Nested Graph',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
              Stack(
                children: [
                  BarChartWidget(a: animate),
                  LineChartWidget(a: animate,),
                ],
              ),
            ],
          )
        ),
      )
    );
  }
}


