import 'package:flutter/material.dart';
import 'package:tasks/displayScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Widget Demo',
      home: DisplayScreen(),
    );
  }
}


