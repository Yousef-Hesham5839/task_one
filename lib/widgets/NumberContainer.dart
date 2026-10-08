import 'package:flutter/material.dart';

class NumberContainer extends StatelessWidget {
  const NumberContainer({super.key, required this.dice});

  final int dice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xFFD3BCFD),
        ),
        padding: EdgeInsets.fromLTRB(18, 5, 18, 5),
        child: Text(
          "$dice",
          style: TextStyle(
            fontSize: 50,
            color: Color(0xFF151218),
            fontWeight: FontWeight.bold,
            height: 1,
          ),
        ),
      ),
    );
  }
}
