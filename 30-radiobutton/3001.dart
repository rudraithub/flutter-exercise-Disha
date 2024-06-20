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
                    value: "Yes", groupValue: check, onChanged: (value){
                    setState(() {
                       check=value.toString()!;
                    });
                  }),
                Text("Yes"),
                SizedBox(width: 20,),
              Radio(
                value: "No", groupValue: check, onChanged: (valuel){
                setState(() {
                  check=valuel.toString()!;
                });
              }),
              Text("No"),
               SizedBox(width: 20,),
              Radio(
                value: "Other", groupValue: check, onChanged: (valuel){
                setState(() {
                  check=valuel.toString()!;
                });
              }),
              Text("Other"),

            ]
              )
            ],
          
          ),
        ),
      ),
          
        
      
    );
  }
  }   