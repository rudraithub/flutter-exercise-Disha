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
      appBar: AppBar(),
       body: Container(
        alignment: Alignment.center,
        child: Container(
          height: 150,
          width: 400,
          child: Column(
            children: [
              Row(
                children: [
                  Radio(
                    activeColor: Colors.green,
                    value: "North", groupValue: check, onChanged: (value){
                    setState(() {
                       check=value.toString()!;
                    });
                  }),
                Text("North"),
                SizedBox(width: 20,),
              Radio(
                 activeColor: Colors.green,
                value: "South", groupValue: check, onChanged: (valuel){
                setState(() {
                  check=valuel.toString()!;
                });
              }),
              Text("South"),
               SizedBox(width: 20,),
              Radio(
                 activeColor: Colors.green,
                value: "East", groupValue: check, onChanged: (valuel){
                setState(() {
                  check=valuel.toString()!;
                });
              }),
              Text("East"),
               SizedBox(width: 20,),
              Radio(
                 activeColor: Colors.green,
                value: "West", groupValue: check, onChanged: (valuel){
                setState(() {
                  check=valuel.toString()!;
                });
              }),
              Text("West"),
              
            ]
              )
            ],
          
          ),
        ),
      ),
          
        
      
    );
  }
  }   