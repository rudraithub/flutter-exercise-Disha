import 'package:flutter/material.dart';
import 'package:flutter_5001/Secnd.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: first(),
    );
  }
}

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 204, 86),
        title: Text('First Screen')),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => second()),
          );
        },
        child: Hero(
          tag: 'hero-text',
          child: Container(
            alignment: Alignment.center,
           height: 240,
           width: 240,
            color: const Color.fromARGB(255, 42, 116, 44),
            child: Text(
              'Tap',
              style: TextStyle(fontSize: 22.0, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}