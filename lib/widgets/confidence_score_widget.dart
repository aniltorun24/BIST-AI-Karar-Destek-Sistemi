import 'package:flutter/material.dart';

/// A reusable widget for displaying confidence scores.
class ConfidenceScoreWidget extends StatelessWidget {
  final double score;
  final String label;
  final Color color;

  const ConfidenceScoreWidget({
    Key? key,
    required this.score,
    required this.label,
    this.color = Colors.green,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Text(
            '${(score * 100).toStringAsFixed(2)}%',
            style: TextStyle(
              fontSize: 24,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}