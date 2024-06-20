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
    length: 3,
     child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Tabs Demo",
        style: 
        TextStyle(
          color: Colors.white
        ),),
        bottom: TabBar(tabs: [
          Icon(Icons.arrow_forward,
          color: Colors.white,),
            Icon(Icons.search,
          color: Colors.white,),
            Icon(Icons.home,
          color: Colors.white,),

      
     ]),
      ),
      body: Center(
        child: TabBarView(children: [
          Center(child: Icon(Icons.arrow_forward)),
          Center(child: Icon(Icons.search) ),
          Center(child: Icon(Icons.home),)
        ]),
      ),
     )
     );
  }
