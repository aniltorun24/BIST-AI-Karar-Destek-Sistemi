import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock Recommendations'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('AAPL'),
            subtitle: Text('Confidence Score: 85%'),
            trailing: Icon(Icons.thumb_up, color: Colors.green),
          ),
          ListTile(
            title: Text('GOOGL'),
            subtitle: Text('Confidence Score: 90%'),
            trailing: Icon(Icons.thumb_up, color: Colors.green),
          ),
          ListTile(
            title: Text('AMZN'),
            subtitle: Text('Confidence Score: 78%'),
            trailing: Icon(Icons.thumb_down, color: Colors.red),
          ),
          // Add more stock recommendations here
        ],
      ),
    );
  }
}