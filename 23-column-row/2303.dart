import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      body: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Container(
            height: 540,
            width: 60,
            color: Colors.brown,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 540,
            width: 60,
            color: Colors.blue,
          ),
          SizedBox(width: 10,),
          Column(
            children:[ 
              SizedBox(height: 4,),
              Container(
              height: 100,
              width: 245,
              color: Colors.purple,
            ),
            SizedBox(height: 10,),

            Row(
              children: [
                Container(
                  height: 200,
                  width: 160,
                  color: Colors.orange,
                ),
                SizedBox(width: 10,),
                Container(
                  height: 200,
                  width: 70,
                  color: Colors.grey,
                )
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height:60 ,
              width: 240,
              color: Colors.yellow,
            ),
            SizedBox(height: 10,),
            Container(
              height:147 ,
              width: 240,
              color: Colors.lightGreen,
            ),
            ]
          )
          
        ],
      )
    ),
  ));
}