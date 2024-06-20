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
  String? check;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Radio Button demo",
        style: TextStyle(
          color: Colors.yellow
        ),),
      ),
       body: Container(
        child: Container(
          height: 350,
          width: 400,
          child: Column(
            children: [
              Text("Please Select Your Language",
              style: TextStyle(
                color: Color.fromARGB(255, 56, 4, 71),
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 10,),
              RadioListTile(
                activeColor: Colors.yellow,
                title: Text("FLutter"),
                value: "Flutter", groupValue: check, onChanged: (value){
                setState(() {
                   check=value.toString()!;
                });
              }),
              RadioListTile(
                 activeColor: Colors.yellow,
                title: Text("Node JS"),
                value: "Node JS", groupValue: check, onChanged: (valuel){
                setState(() {
                  check=valuel.toString()!;
                });
              }),
              RadioListTile(
                 activeColor: Colors.yellow,
                title: Text("React"),
                value: "React", groupValue: check, onChanged: (valuel){
                setState(() {
                  check=valuel.toString()!;
                });
              })
            ],
          ),
        ),
      ),
          
        
      
    );
  }
  }   