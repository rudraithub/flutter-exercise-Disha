
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
                  padding:  EdgeInsets.all(50),
                  child:  Text('My', style: TextStyle(fontSize: 20)),
                  color: Colors.pink,
                ),
                Container(
                  padding:  EdgeInsets.all(50),
                  child:  Text('Name', style: TextStyle(fontSize: 20)),
                  color: Colors.blueGrey,
                ),
                Container(
                  padding:  EdgeInsets.all(50),
                  child:  Text('Is', style: TextStyle(fontSize: 20)),
                  color: Colors.amber,
                ),
                Container(
                  padding: EdgeInsets.all(50),
                  child: Text('RUDRA IT HUB', style: TextStyle(fontSize: 20)),
                  color: Colors.purple,
                ),
                SizedBox(height: 660),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child:  Center(
                        child: Text('Click', style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,),
                      ),
                      decoration: BoxDecoration(shape: BoxShape.circle,
                      
                      color: Colors.red,
                      ),
                    ),
                  ],
                )
              ],
            ),
    );
  }
}
