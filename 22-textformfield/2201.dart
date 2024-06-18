import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 224, 149, 88),
          title: Text(
            "TextFormfield Demo",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        body:  Center(
          child: Container(
            height: 500,
            width: 1020,
            child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(6)),
                      borderSide: BorderSide(color:Color.fromARGB(255, 224, 149, 88),)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6),
                       borderSide: BorderSide(color:Color.fromARGB(255, 224, 149, 88),)),
                      prefixIcon: Icon(Icons.person,
                       color: Colors.red,) ,
                      labelText: "Enter yor UserName",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      ),
                    ),
          ),
        ),
              ),
            ),
    );
}

