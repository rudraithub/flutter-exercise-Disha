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
            "My Name is Disha",
              style: TextStyle(
                color: Color.fromARGB(192, 15, 116, 15),
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

