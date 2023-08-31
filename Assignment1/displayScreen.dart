import 'package:flutter/material.dart';
import 'customWidget.dart';
import 'map.dart';
import 'homePage.dart'; // Make sure to import your HomePage

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({Key? key}) : super(key: key);

  @override
   DisplayScreenState createState() => DisplayScreenState();
}

class DisplayScreenState extends State<DisplayScreen> {
  int doubleTappedIndex = -1; // Track the index of the double-tapped item

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Cars'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: cars.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onDoubleTap: () {
                setState(() {
                  doubleTappedIndex = index;
                });
              },
              child: CarCustomWidget(
                numberPlate: cars[index]['numberPlate']!,
                carColor: cars[index]['carColor']!,
                engineNumber: cars[index]['engineNumber']!,
                boxBackgroundColor: doubleTappedIndex == index ? Colors.red : Colors.greenAccent,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the HomePage
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
        child: const Icon(Icons.home), // Use the home icon
      ),
    );
  }
}