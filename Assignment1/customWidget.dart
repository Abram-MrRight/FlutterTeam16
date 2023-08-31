import 'package:flutter/material.dart';

class CarCustomWidget extends StatelessWidget {
  final String numberPlate;
  final String carColor;
  final String engineNumber;
  final Color boxBackgroundColor;


  const CarCustomWidget({super.key,
    required this.numberPlate,
    required this.carColor,
    required this.engineNumber,
    required this.boxBackgroundColor,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: boxBackgroundColor,

        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Number Plate: $numberPlate',
            style: const TextStyle(
              color: Colors.white, // Set text color to white for better visibility
            ),
          ),
          const SizedBox(height: 5),

          Text(
            'Car color is: $carColor',
            style: const TextStyle(
              color: Colors.black, // Set text color to white for better visibility
            ),
          ),
          const SizedBox(height: 5),

          Text(
            'Engine Number: $engineNumber',
            style: const TextStyle(
              color: Colors.white, // Set text color to white for better visibility
            ),
          ),
          const SizedBox(height: 5),

        ],
      ),
    );
  }
}

