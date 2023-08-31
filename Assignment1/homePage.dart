import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> tappedBoxes = List.generate(10, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(10, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    tappedBoxes[index] = !tappedBoxes[index];
                  });
                },
                child: ColoredBox(
                  color: tappedBoxes[index] ? Colors.red : Colors.blue,
                  child: SizedBox(
                    width: 40,
                    height: 100,
                    child: Center(child: Text('Text ${index + 1}')),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}