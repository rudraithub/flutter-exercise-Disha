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
        title: Text('Animation Demo'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            width: selected? 150 : 250,
            height: selected? 150 : 250,
            color: selected? Colors.blue : Colors.blue,
            alignment: selected? Alignment.center : Alignment.center,
            duration: Duration(seconds: 10),
            child: Text(selected? "Tap to expand/collapse ": "Tap to return",style: TextStyle(color: Colors.white,
             fontSize: 22),),
            curve: Curves.fastLinearToSlowEaseIn,
            ),
        ),
      ),
    );
  }
}