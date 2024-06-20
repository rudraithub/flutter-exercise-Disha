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
      home: dk(),
    );
  }
}

class dk extends StatefulWidget {
  const dk({super.key});

  @override
  State<dk> createState() => _dkState();
}

class _dkState extends State<dk> {
  @override
  Widget build(BuildContext context)=> DefaultTabController(
    length: 4,
     child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("TabBar Demo",
        style: 
        TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
        bottom: TabBar(tabs: [
          Icon(Icons.alarm,
          color: Color.fromARGB(255, 10, 55, 92),),
            Icon(Icons.stay_current_portrait,
          color:Color.fromARGB(255, 10, 55, 92) ),
            Icon(Icons.home,
          color: Colors.red,),
           Icon(Icons.laptop_mac,
          color: Color.fromARGB(255, 10, 55, 92)),
        ]),
      ),
      body: Center(
        child: TabBarView(children: [
          Center(child: Icon(Icons.alarm)),
          Center(child: Icon(Icons.stay_current_portrait) ),
          Center(child: Icon(Icons.home),),
           Center(child: Icon(Icons.laptop_mac),)
        ]),
      ),
     )
     );
  }
