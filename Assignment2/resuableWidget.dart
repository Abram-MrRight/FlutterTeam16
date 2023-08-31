import 'package:flutter/material.dart';

class RoundedBoxColumn extends StatelessWidget {
  final Color columnColor;
  final List<Widget> children;
  final bool roundedCorners;

  RoundedBoxColumn({required this.columnColor, required this.children, this.roundedCorners = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: columnColor,
        borderRadius: roundedCorners ? BorderRadius.circular(20.0) : null,
      ),
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: children,
      ),
    );
  }
}