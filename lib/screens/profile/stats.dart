import 'package:athelia/widgets/profile/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartData {
  ChartData(this.x, this.y1, this.y2, this.y3, this.y4);
  final String x;
  final double y1;
  final double y2;
  final double y3;
  final double y4;
}

class StatsSubSection extends StatelessWidget {
  StatsSubSection({super.key});

  // final List userHobbyData = [];
  final List<ChartData> chartData = [
    ChartData('China', 26, 10, 14, 20),
    ChartData('USA', 14, 11, 18, 23),
    ChartData('UK', 16, 10, 15, 20),
    ChartData('Brazil', 18, 16, 18, 24),
    ChartData('India', 23, 17, 12, 21),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomCard(
              boxColor: Colors.grey.shade100,
              heading: 'Some Text',
              icon: Icons.bloodtype,
              metric: 'Some Metric',
            ),
            CustomCard(
              boxColor: Colors.grey.shade100,
              heading: 'Some Text',
              icon: Icons.bloodtype,
              metric: 'Some Metric',
            ),
          ],
        ),
        SfCartesianChart(
          primaryXAxis: CategoryAxis(majorGridLines: MajorGridLines(width: 0)),
          primaryYAxis: NumericAxis(majorGridLines: MajorGridLines(width: 0)),

          series: [
            StackedColumnSeries<ChartData, String>(
              borderRadius: BorderRadius.circular(70),
              dataSource: chartData,
              xValueMapper: (data, _) => data.x,
              yValueMapper: (data, _) => data.y1,
              width: 0.6,
              color: Color(0xFF9FBF6D), // Calmness
            ),
            StackedColumnSeries<ChartData, String>(
              borderRadius: BorderRadius.circular(70),
              dataSource: chartData,
              xValueMapper: (data, _) => data.x,
              yValueMapper: (data, _) => data.y2,
              width: 0.6,
              color: Color.fromARGB(255, 224, 176, 80), // Excitement
            ),
            StackedColumnSeries<ChartData, String>(
              borderRadius: BorderRadius.circular(50),
              dataSource: chartData,
              xValueMapper: (data, _) => data.x,
              yValueMapper: (data, _) => data.y3,
              width: 0.6,
              color: Color(0xFFB4B0DF), // Sadness
            ),
            StackedColumnSeries<ChartData, String>(
              borderRadius: BorderRadius.circular(50),
              dataSource: chartData,
              xValueMapper: (data, _) => data.x,
              yValueMapper: (data, _) => data.y4,
              width: 0.6,
              color: Color(0xFFD46D5D), // Stress
            ),
          ],
        ),
      ],
    );
  }
}
