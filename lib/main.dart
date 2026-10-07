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
        backgroundColor: Color(0xFF151218),
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
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text("Total is 2",
               style: TextStyle(
                color: Colors.white,
                fontSize: 18,
               ),
              ),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                width: 250,
                height: 180,
                child: Image.asset("assets/1.jpg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
