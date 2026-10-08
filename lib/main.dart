import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int dice1 = 1;
  int dice2 = 1;
  int total = 2;
  String image = "assets/1.jpg";

  final Random random = Random();

  void rollDice() {
    setState(() {
      dice1 = random.nextInt(6) + 1;
      dice2 = random.nextInt(6) + 1;
      total = dice1 + dice2;

      if (total > 10) {
        image = "assets/2.jpg";
      } else {
        image = "assets/1.jpg";
      }
    });
  }

  void reset() {
    setState(() {
      dice1 = 1;
      dice2 = 1;
      total = 2;
      image = "assets/1.jpg";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF151218),
        appBar: AppBar(
          backgroundColor: Color(0xFF68548E),
          title: Center(
            child: Text(
              "Play Dice",
              style: TextStyle(
                color: Color(0xFFA791D0),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                "Total is $total",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(height: 100),
              SizedBox(width: 250, height: 180, child: Image.asset(image)),
              SizedBox(height: 100),
              Row(
                children: [
                  SizedBox(width: 50),
                  NumberContainer(dice: dice1),
                  SizedBox(width: 165),
                  NumberContainer(dice: dice2),
                ],
              ),
              SizedBox(height: 100),
              Row(
                children: [
                  ButtonWidget(buttonTitle: "roll", onPressed: rollDice),
                  SizedBox(width: 10),
                  ButtonWidget(buttonTitle: "reset", onPressed: reset),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.buttonTitle,
    required this.onPressed,
  });

  final String buttonTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFF44336),
          foregroundColor: Colors.yellow,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        child: Text(buttonTitle),
      ),
    );
  }
}

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
