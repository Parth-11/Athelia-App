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
    ChartData('China', 12, 10, 14, 20),
    ChartData('USA', 14, 11, 18, 23),
    ChartData('UK', 16, 10, 15, 20),
    ChartData('Brazil', 18, 16, 18, 24),
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
          primaryXAxis: CategoryAxis(),
          series: [
            StackedColumnSeries<ChartData, String>(
              borderRadius: BorderRadius.circular(64),
              dataSource: chartData,
              xValueMapper: (data, _) => data.x,
              yValueMapper: (data, _) => data.y1,
            ),
            StackedColumnSeries<ChartData, String>(
              borderRadius: BorderRadius.circular(64),
              dataSource: chartData,
              xValueMapper: (data, _) => data.x,
              yValueMapper: (data, _) => data.y2,
            ),
            StackedColumnSeries<ChartData, String>(
              borderRadius: BorderRadius.circular(64),
              dataSource: chartData,
              xValueMapper: (data, _) => data.x,
              yValueMapper: (data, _) => data.y3,
            ),
            StackedColumnSeries<ChartData, String>(
              borderRadius: BorderRadius.circular(64),
              dataSource: chartData,
              xValueMapper: (data, _) => data.x,
              yValueMapper: (data, _) => data.y4,
            ),
          ],
        ),
      ],
    );
  }
}
