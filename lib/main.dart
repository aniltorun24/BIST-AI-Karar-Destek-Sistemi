import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BIST AI Decision Support System',
      home: Scaffold(
        appBar: AppBar(
          title: Text('BIST AI Decision Support System'),
        ),
        body: Center(
          child: Text('Welcome to the BIST AI Decision Support System!'),
        ),
      ),
    );
  }
}