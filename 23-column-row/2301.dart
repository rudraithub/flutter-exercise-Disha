import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Column and Row",
        style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This is a Column",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),),
              Text.rich(
                TextSpan(
                  text: "Name: ",
                  style: TextStyle(fontSize: 20),
                  children: <InlineSpan>[
                    TextSpan(
                      text: "John Doe",
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
                      text: "jhondoe@example.com",
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
