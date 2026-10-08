import 'dart:math';
import 'package:flutter/material.dart';
import 'package:task_one/widgets/ButtonWidget.dart';
import 'package:task_one/widgets/NumberContainer.dart';

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
  String result = "You Lose";

  final Random random = Random();

  void rollDice() {
    setState(() {
      dice1 = random.nextInt(6) + 1;
      dice2 = random.nextInt(6) + 1;
      total = dice1 + dice2;

      if (total > 10) {
        image = "assets/2.jpg";
        result = "You Win";
      } else {
        image = "assets/1.jpg";
        result = "You Lose";
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF68548E),
          brightness: Brightness.dark,
        ),
      ),

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
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 100),
              SizedBox(
                width: 250,
                height: 180,
                child: Image.asset(image)
              ),
              SizedBox(height: 20),
              Text(
                result, 
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
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



