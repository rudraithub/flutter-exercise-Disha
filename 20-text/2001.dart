import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
         ),
        body: Center(
          child: Text(
            "Hello World",
              style: TextStyle(
                color: Color.fromARGB(255, 88, 108, 221),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                backgroundColor: Color.fromARGB(255, 240, 122, 161),
                decoration: TextDecoration.underline,
                decorationColor: Color.fromARGB(255, 240, 221, 51),
                decorationThickness: 2,
              ),
          ) 
           
             
          
        ),
      ),
    )
  );
}

