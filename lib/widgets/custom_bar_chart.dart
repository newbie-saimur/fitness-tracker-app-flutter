import 'package:fitness_tracker_app/utils/colors.dart';
import 'package:fitness_tracker_app/utils/text_style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomBarChart extends StatelessWidget {
  const CustomBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map> summary = [
      {'label': 'S', "value": 80.0, "index": 0},
      {'label': 'M', "value": 45.0, "index": 1},
      {'label': 'T', "value": 75.0, "index": 2},
      {'label': 'W', "value": 60.0, "index": 3},
      {'label': 'T', "value": 88.0, "index": 4},
      {'label': 'F', "value": 70.0, "index": 5},
      {'label': 'S', "value": 50.0, "index": 6},
    ];
    return SizedBox(
      height: 150,
      child: BarChart(
        BarChartData(
          titlesData: FlTitlesData(
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  final index = value.toInt() - 1;
                  return bodyLarge(
                    data: summary[index]['label'],
                    textColor: Colors.white30,
                  );
                },
              ),
            ),
          ),
          gridData: FlGridData(show: false),
          maxY: 100,
          minY: 0,
          barGroups: summary
              .map(
                (element) => BarChartGroupData(
                  x: element['index'] + 1,
                  barRods: [
                    BarChartRodData(
                      toY: element['value'],
                      color: AppColors.primaryColor,
                      width: 36,
                      borderRadius: BorderRadius.circular(10),
                      backDrawRodData: BackgroundBarChartRodData(
                        color: AppColors.secondaryColor,
                        show: true,
                        toY: 100,
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
