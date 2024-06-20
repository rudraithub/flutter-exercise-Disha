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
        backgroundColor: Colors.pink,
        title: Text("Radio Button demo",
        style: TextStyle(
          color: const Color.fromARGB(255, 177, 204, 178),
          fontWeight: FontWeight.bold
        ),),
      ),
       body: Container(
        child: Container(
          height: 350,
          width: 400,
          child: Column(
            children: [
              Text("Please Select Your City",
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 10,),
              RadioListTile(
                activeColor: Color.fromARGB(255, 69, 6, 82),
                title: Text("Bhavnagar"),
                value: "Bhavnagar", groupValue: check, onChanged: (value){
                setState(() {
                   check=value.toString()!;
                });
              }),
              RadioListTile(
                 activeColor: Color.fromARGB(255, 69, 7, 82),
                title: Text("Ahmedabad"),
                value: "Ahmedabad", groupValue: check, onChanged: (valuel){
                setState(() {
                  check=valuel.toString()!;
                });
              }),
              RadioListTile(
                 activeColor: Color.fromARGB(255, 78, 12, 80),
                title: Text("Baroda"),
                value: "Baroda", groupValue: check, onChanged: (valuel){
                setState(() {
                  check=valuel.toString()!;
                });
              }),
                RadioListTile(
                 activeColor: Color.fromARGB(255, 78, 12, 80),
                title: Text("Surat"),
                value: "Surat", groupValue: check, onChanged: (valuel){
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