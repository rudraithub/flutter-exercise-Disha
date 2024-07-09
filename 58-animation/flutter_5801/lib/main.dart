import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: animi(),
    );
  }
}

class animi extends StatefulWidget {
  const animi({super.key});

  @override
  State<animi> createState() => _animiState();
}

class _animiState extends State<animi> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container Demo'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            width: selected? 250 : 500,
            height: selected? 250 : 500,
            color: selected? Colors.red : Colors.blue,
            alignment: selected? Alignment.center : Alignment.center,
            duration: Duration(seconds: 10),
            child: Text(selected? "Not Expanded": "Expanded",style: TextStyle(color: Colors.white,
             fontWeight: FontWeight.bold,
             fontSize: 22),),
            curve: Curves.fastLinearToSlowEaseIn,
            ),
        ),
      ),
    );
  }
}