import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("My Image Demo"),
        ),
        body: Container(
          child: Column(
            children:[ 
              Image.network("https://media.istockphoto.com/id/1532541132/photo/natural-scenery-a-person-stand-on-a-mountaintop-over-a-beautiful-rive-and-waterfall.jpg?s=1024x1024&w=is&k=20&c=i9LvhDKbmSIAPZNHD-vbyNni7sz051PHjZGeSTUOYmk=",
            height: 300,
            width: 300,),
            Image.network("https://media.istockphoto.com/id/1420676204/photo/portrait-of-a-royal-bengal-tiger-alert-and-staring-at-the-camera-national-animal-of-bangladesh.jpg?s=1024x1024&w=is&k=20&c=WLyTdqemXbqIHvH_Jl8KUig8hnU1Hph76w5XmXaRitg=",
            height: 200,
            width: 300,)
            ]
          ),
        ),
      ),
    )
  );
}
