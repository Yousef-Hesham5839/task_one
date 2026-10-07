import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF68548E),
          title: Center(
            child: Text("Play Dice",
             style: TextStyle(
              color: Color(0xFFA791D0),
              fontSize: 22,
              fontWeight: FontWeight.bold,
             ),
            ),
          ),
        ),
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
