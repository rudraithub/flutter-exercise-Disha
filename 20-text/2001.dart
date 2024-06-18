import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
         ),
        body: Center(
          child: Text.rich(
            TextSpan(
              text: "Good Morning",
              style: TextStyle(
                color: Colors.pinkAccent,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.wavy,
                decorationColor: Color.fromARGB(255, 59, 54, 7),
                decorationThickness: 2,
              ),
             
          
        ),
      ),
    )
  )));
}

