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
      home: dkk(),
    );
  }
}

class dkk extends StatefulWidget {
  const dkk({super.key});

  @override
  State<dkk> createState() => _dkkState();
}

class _dkkState extends State<dkk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 153, 181),
      title: Text("Second Screen",style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: ElevatedButton(onPressed:(){
          Navigator.pop(context);
        } , 
         style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
        child: Text("Go Back to first Screen",style: TextStyle(color: Colors.black))),
      ),
    );
  }
}