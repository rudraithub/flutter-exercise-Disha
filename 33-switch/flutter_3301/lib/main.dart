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
  bool swtch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
    title: Text(" Switch Button Demo",
    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Switch(value: swtch, 
              onChanged: (value){
                setState(() {
                  swtch=value;
                });
                },
                activeColor: Colors.yellow,
                activeTrackColor: Colors.red,
                inactiveThumbColor: Colors.yellow,
                inactiveTrackColor: Colors.red,
                ),
              SizedBox(height: 5,),
              Text("value: $swtch",
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}