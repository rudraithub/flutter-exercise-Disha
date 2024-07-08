import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WrapTextExample(),
    );
  }
}

class WrapTextExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Wrap Demo'),
      ),
      body: Wrap(
         spacing: 25.0, 
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Flutter as a Technology is very flexible.',
              style: TextStyle(color: Colors.black, fontSize: 27),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Flutter has proven it's reliability,",
              style: TextStyle(color: Colors.black, fontSize: 27),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Home Screen',
              style: TextStyle(color: Colors.black, fontSize: 27),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Second Screen',
              style: TextStyle(color: Colors.black, fontSize: 27),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Third Screen',
              style: TextStyle(color: Colors.black, fontSize: 27),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Fourth Screen',
              style: TextStyle(color: Colors.black, fontSize: 27),
            ),
          ),
        ],
      ),
    );
  }
}
