import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Container(
            height: 140,
            width: 400,
            color: Colors.yellow,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 100,
                width: 150,
                color: Color.fromARGB(255, 207, 182, 191),
              ),
                SizedBox(
            width: 10,
          ),
          Container(
                height: 100,
                width: 235,
                color: Colors.purple,
              ),
            ],
          ),
           SizedBox(
         height: 10,
          ),
          Row(
            children: [
              SizedBox(width: 5,),
                Container(
                height: 280,
                width: 100,
                color: Color.fromARGB(255, 229, 231, 204),
              ),
              SizedBox(width: 10,),
                Container(
                height: 280,
                width: 130,
                color: Colors.blue,
              ),
               SizedBox(width: 10,),
              Column(
                 children: [
                   Container(
                height: 130,
                width: 140,
                color: Colors.yellow,
              ),
              SizedBox(height: 10,),
              Container(
                height: 130,
                width: 140,
                color: Colors.grey,
              ),

                 ],
              )
            ],
          )
         
        ],
      )
    ),
  ));
}