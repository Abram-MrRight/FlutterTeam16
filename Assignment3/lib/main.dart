import 'package:flutter/material.dart';
import 'package:navpackage/navpackage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Bar ',
      home: Nav(),
    );
  }
}