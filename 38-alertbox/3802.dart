import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        backgroundColor: Colors.orange,
        title: Text(
          "Alert Demo",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),
          ),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(onPressed: (){
                showDialog(context: context,
                 builder: (BuildContext context){
                  return AlertDialog(
                    title: Text("Alert"),
                    content: Text("Do you want to Exit"),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: Text("OK",
                       style: TextStyle(
                color: Colors.black
              ),),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(3)
                        )
                      ),
                  ),
                  TextButton(onPressed:(){
                    Navigator.of(context).pop();
                  } , child: Text(
                    "cancel",
                     style: TextStyle(
                color: Colors.black
              ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                     shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(3)
                        )
                  ),)
                    ],
                  );
                 });
              }, child: Text("         Show Dialog           ",
              style: TextStyle(
                color: Colors.black
              ),),
              style: ElevatedButton.styleFrom(
                backgroundColor:  Colors.blueGrey,
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