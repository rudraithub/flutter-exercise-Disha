import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Column and Row Exercise",
        style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This is My Column Exercise",
              style: TextStyle(
                fontSize: 28,
                color: Colors.brown,
                fontWeight: FontWeight.bold
              ),),
              Text.rich(
                TextSpan(
                  text: "Name: ",
                  style: TextStyle(fontSize: 20,
                  color: Color.fromARGB(255, 15, 109, 64)),
                  children: <InlineSpan>[
                    TextSpan(
                      text: "Rudra IT Hub",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.pink,
                        fontWeight: FontWeight.bold
                      )
                    )
                  ]
                )
              ),
              Text.rich(
                TextSpan(
                  text: "Email: ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 25, 119, 28)
                  ),
                  children: <InlineSpan>[
                    TextSpan(
                      text: "rudraithub123@gmail.com",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontSize: 20
                      )
                    )
                  ]
                )
              )
            ],
          ),
        )
    
  )
    ),
  )
    );
}
