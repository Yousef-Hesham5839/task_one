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
              SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  SizedBox(
                   width: 50,
                  ),
                  NumberContainer(),
                  SizedBox(
                   width: 165,
                  ),
                  NumberContainer(),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(onPressed: (){}, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF44336),
                        foregroundColor: Colors.yellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: Text("roll"),
                    ),
                  )
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

class NumberContainer extends StatelessWidget {
  const NumberContainer({
    super.key,
  });

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
        child: Text("1", 
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
