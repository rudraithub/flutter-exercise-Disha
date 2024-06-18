import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 233, 39, 152),
          title: Text(
            "TextField Demo",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        body:  TextField(
                decoration: InputDecoration(
                   icon: Icon(Icons.person,
                   color: Colors.red,),
                  labelText: "Enter yor UserName",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  )
                ),
              ),
            ),
    );
}

