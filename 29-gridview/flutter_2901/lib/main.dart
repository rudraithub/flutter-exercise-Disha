import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: grd(),
    );
  }
}

class grd extends StatefulWidget {
  const grd({super.key});

  @override
  State<grd> createState() => _grdState();
}

class _grdState extends State<grd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 55, 95),
        title: Text("My first App",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
        ),),
         actions: [Icon(Icons.home)],
         iconTheme: IconThemeData(color: Colors.orange),
      ),
      body:   GridView.extent(
              primary: false,
              padding: const EdgeInsets.all(16),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              maxCrossAxisExtent: 200.0,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(60),
                  child: const Text('Item 1', style: TextStyle(fontSize: 20)),
                  color: Colors.red,
                ),
                Container(
                  padding: const EdgeInsets.all(60),
                  child: const Text('Item 2', style: TextStyle(fontSize: 20)),
                  color: Colors.green,
                ),
                Container(
                  padding: const EdgeInsets.all(60),
                  child: const Text('Item 3', style: TextStyle(fontSize: 20)),
                  color: Colors.blue,
                ),
                Container(
                  padding: const EdgeInsets.all(60),
                  child: const Text('Item 4', style: TextStyle(fontSize: 20)),
                  color: Colors.orange,
                ),
              ],
            ),
    );
  }
}