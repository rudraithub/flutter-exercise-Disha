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
      home: adbox(),
    );
  }
}

class adbox extends StatefulWidget {
  const adbox({super.key});

  @override
  State<adbox> createState() => _adboxState();
}

class _adboxState extends State<adbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Dialog Demo",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),
          ),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                showDialog(context: context,
                 builder: (BuildContext context){
                  return AlertDialog(
                    title: Text("Invalid OTP"),
                    content: Text("Please enter correct OTP"),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: Text("OK",
                       style: TextStyle(
                color: Colors.black
              ),),
                      style: TextButton.styleFrom(
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(3)
                        )
                      ),
                  ),
                    ],
                  );
                 });
              }, child: Text("Show Dialog Box",
              style: TextStyle(
                color: Colors.black
              ),),
              style: ElevatedButton.styleFrom(
                backgroundColor:  Colors.amber,
                 shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(3)
                        )
              ),),
              
            ],
          ),
        )
      );
  
  }
}