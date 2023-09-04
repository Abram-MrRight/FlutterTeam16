import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({Key? key}) : super(key: key);

  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  String result = '';

  // Function to check if a number is prime
  bool isPrime(int num) {
    if (num <= 1 ) return false;
    if (num <= 3) return true;
    if (num % 2 == 0 || num % 3 == 0) return false;
    int i = 5;
    while (i * i <= num) {
      if (num % i == 0 || num % (i + 2) == 0) return false;
      i += 6;
    }
    return true;
  }

  String displayResult(String value) {
    if (int.tryParse(value) != null) {
      int intValue = int.parse(value);
      if (isPrime(intValue)) {
        return 'It is Prime Number';
      } else if (intValue.isEven) {
        return 'It is Even Number';
      } else {
        return 'It is Odd Number';
      }
    } else if (value.toLowerCase() == 'true' || value.toLowerCase() == 'false') {
      return 'It is a Boolean';
    } else {
      return 'It is a String';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('User Input')),

      ),
      body: Center(
        child: Container(
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(8), // Add some padding for better looks
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center, // Align text to center
                  children: [
                    Expanded(
                      child: Text(
                        "Hello! Enter your input below",
                        style: TextStyle(
                          color: Colors.black, // Text color
                          fontWeight: FontWeight.bold, // Make it bold
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.black,
                    ), // Down arrow icon
                  ],
                ),
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    result = displayResult(value);
                  });
                },
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.deepOrange,
                      width: 5,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.blueAccent,
                      width: 2,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.green, // Set background color to black
                        title: const Text('Analysis Result'),
                        content: Text(
                          result,
                          style: TextStyle(color: Colors.white), // Set text color to white
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'Close',
                              style: TextStyle(color: Colors.black), // Set text color to white
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text('Search'),
              )
            ],
          ),
        ),
      ),
    );
  }
}