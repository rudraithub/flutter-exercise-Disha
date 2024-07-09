import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("ShaderMask demo"), 
        backgroundColor: Colors.yellow),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(opacity: 1,
              child: Text("Normal Text",
              style: TextStyle(color: Colors.pink,
              fontSize: 26,
              fontWeight: FontWeight.bold),),),
              SizedBox(height: 20,),
              Opacity(opacity: 0.4,
               child: Text("Opacity Text",
              style: TextStyle(color: Colors.pink,
              fontSize: 26,
              fontWeight: FontWeight.bold),),
              )
            ],
          ),
        ),
    );
  }
}