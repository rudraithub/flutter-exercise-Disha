import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
         ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text(
                'Good Morning',
                style: TextStyle(fontSize: 30,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationColor: Color.fromARGB(255, 163, 148, 10),
                decorationStyle: TextDecorationStyle.wavy,
                decorationThickness: 2
                ),
              ),
              Text(
                'Good Evening',
                style: TextStyle(
                  fontSize: 30,
                color: Color.fromARGB(255, 236, 170, 48),
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                decorationColor: Color.fromARGB(255, 163, 148, 10),
                decorationStyle: TextDecorationStyle.wavy,
                decorationThickness: 2
                ),
              ),
              Text(
                'Good Night',
                style: TextStyle(
                  fontSize: 25,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationColor: Color.fromARGB(255, 163, 148, 10),
                decorationStyle: TextDecorationStyle.wavy,
                decorationThickness: 2
                ),
              ),
               Text(
                'Greeting planet!',
                style: TextStyle(
                  fontSize: 25,
                color: const Color.fromARGB(255, 19, 1, 7),
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationColor: Color.fromARGB(255, 223, 46, 164),
                decorationStyle: TextDecorationStyle.wavy,
                decorationThickness: 2
                ),
              ),
            ],
          ),
        ),
      ),
    )
  );
}

