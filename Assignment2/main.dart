import 'package:cohort2ui/resuableWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Column Layout')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // First Column: Rounded boxes with rectangles
              RoundedBoxColumn(
                columnColor: Colors.grey,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(color: Colors.red, width: 50, height: 50),
                      Container(color: Colors.blue, width: 50, height: 50),
                      Container(color: Colors.green, width: 50, height: 50),
                      Container(color: Colors.orange, width: 50, height: 50),
                    ],
                  ),
                ],
              ),

              SizedBox(width: 20), // Add spacing between the columns

              // Second Column: Rounded boxes with circles
              RoundedBoxColumn(
                columnColor: Colors.black,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                        width: 50,
                        height: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),
                        width: 50,
                        height: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                        width: 50,
                        height: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(width: 20), // Add spacing between the columns

              // Third Column: Icons on top
              RoundedBoxColumn(
                columnColor: Colors.blueAccent,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 40),
                      Icon(Icons.star, color: Colors.yellow, size: 40),
                      Icon(Icons.star, color: Colors.yellow, size: 40),
                      Icon(Icons.star, color: Colors.yellow, size: 40),
                    ],
                  ),
                ],
                roundedCorners: false,
              ),

              SizedBox(width: 20), // Add spacing between the columns

              // Fourth Column: Mix of icons and circles at the bottom
              RoundedBoxColumn(
                columnColor: Colors.black,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                        width: 50,
                        height: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                        width: 50,
                        height: 50,
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 40),
                      Icon(Icons.star, color: Colors.yellow, size: 40),
                    ],
                  ),
                ],
                roundedCorners: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}