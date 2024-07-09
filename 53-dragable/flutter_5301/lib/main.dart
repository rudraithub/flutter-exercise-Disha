import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Sdk(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Sdk extends StatefulWidget {
  const Sdk({super.key});

  @override
  State<Sdk> createState() => _SdkState();
}

class _SdkState extends State<Sdk> {
  double _left = 0.0;
  double _top = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Draggable Demo',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
        ),
        body: Stack(
          children: [
            Positioned(
                left: _left,
                top: _top,
                child: GestureDetector(
                  onPanUpdate: (details) {
                    _top = max(0, _top + details.delta.dy);
                    _left = max(0, _left + details.delta.dx);
                    setState(() {});
                  },
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.purple,
                    child: Center(child: Text('Drag Me',style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,fontSize: 20),)),
                  ),
                ))
          ],
        ));
  }
}