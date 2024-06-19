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
      home:  list(),
    );
  }
}

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.home,
          color: Colors.white,)
        ],
        backgroundColor: Color(0xFF654321),
        title: Text("List Demo",
        style: TextStyle(
          color: Colors.white
        ),),
      ),
      body:ListView.builder(
        itemCount: 20,
       itemBuilder: (context, index) {
         return Card(
          child: ListTile(
            leading: Icon(Icons.list),
                title: Text("List item $index"),
                trailing: Text('Rudra IT Hub'),
                onTap: () {},
          ),
         );
       },
      ),
    );
  }
}