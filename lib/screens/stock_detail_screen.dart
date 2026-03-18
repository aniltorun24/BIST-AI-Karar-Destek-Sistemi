import 'package:flutter/material.dart';

class StockDetailScreen extends StatelessWidget {
  final String stockName;
  final String stockTicker;

  StockDetailScreen({required this.stockName, required this.stockTicker});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$stockName ($stockTicker)'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Detailed Stock Analysis',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Current price, change percentage, and other metrics can be added here
            Text('Current Price: \$XXX.XX'),
            Text('Price Change: +X.XX%'),
            // Placeholder for charts and additional data
            Container(
              height: 200,
              color: Colors.grey[300],
              child: Center(child: Text('Price Chart Placeholder')),  
            ),
            SizedBox(height: 20),
            Text('Volume: XXX,XXX'),
            Text('Market Cap: \$X.XX Billion'),
            // Additional sections for news articles, etc.
          ],
        ),
      ),
    );
  }
}