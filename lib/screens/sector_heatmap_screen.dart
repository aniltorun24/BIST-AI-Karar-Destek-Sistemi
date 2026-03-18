import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class SectorHeatmapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sector Performance Heatmap'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: _buildHeatmap(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeatmap() {
    return Container(
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: 100,
          barGroups: _getBarGroups(),
        ),
      ),
    );
  }

  List<BarChartGroupData> _getBarGroups() {
    return [
      BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 70, color: Colors.green)]),
      BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 30, color: Colors.red)]),
      BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 50, color: Colors.yellow)]),
      BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 90, color: Colors.blue)]),
    ];
  }
}