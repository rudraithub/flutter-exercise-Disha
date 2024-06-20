import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text("My Image Demo"),
        ),
        body: Container(
          child: Column(
            children:[ Image.network("https://cdn.pixabay.com/photo/2018/05/10/10/09/palm-tree-3387205_960_720.jpg",
            height: 300,
            width: 300,),
            Image.network("https://cdn.pixabay.com/photo/2012/10/10/05/04/train-60539_960_720.jpg",
            height: 200,
            width: 300,)
            ]
          ),
        ),
      ),
    )
  );
}
