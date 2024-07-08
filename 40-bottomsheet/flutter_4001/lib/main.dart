
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
      home: sheet(),
    );
  }
}

class sheet extends StatefulWidget {
  const sheet({super.key});

  @override
  State<sheet> createState() => _sheetState();
}

class _sheetState extends State<sheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showModalBottomSheet(
              context: context, 
              builder: (BuildContext context){
                return Container(
                  height: 200,
                  width: double.infinity,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Rudra IT Hub",style: TextStyle(color: Colors.black),),
                        SizedBox(height: 10,),
                        ElevatedButton(
                            onPressed: (){
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(7))),
                             child: Text("  Close BotomSheet  ",
                              style: TextStyle(color: Colors.white,)),
                            ),
                            SizedBox(height: 10,),
                           Text("I am Bottom Sheet",style: TextStyle(color: Colors.black),),  
                      ],
                    ),
                  ),
                );
              } 
              );
        }, 
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(7))),
        child: Text('Show Bottom Sheet',
        style: TextStyle(color: Colors.white,),)),
      ) 
      );;
  }
}