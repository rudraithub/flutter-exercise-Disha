import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: dk(),
    );
  }
}

class dk extends StatefulWidget {
  const dk({super.key});

  @override
  State<dk> createState() => _dkState();
}

class _dkState extends State<dk> {
  int age=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Column(
          children: [
            Slider(
              divisions: 100,
              activeColor: Color.fromARGB(255, 94, 7, 68),
              inactiveColor: Colors.yellow,
              max: 100,
              value: age.toDouble(),
             onChanged: (value){
              setState(() {
                age= value.toInt();
              });
             }),
             Text("SLIDER VALUE====>$age",
             style: 
             TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 20
             ),)
          ],
        ),
      ),
    );
  }
}