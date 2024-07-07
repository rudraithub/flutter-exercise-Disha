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
      home: Textfmd(),
    );
  }
}

class Textfmd extends StatefulWidget {
  const Textfmd({super.key});

  @override
  State<Textfmd> createState() => _TextfmdState();
}

class _TextfmdState extends State<Textfmd> {
  
  final fromkey = GlobalKey<FormState>();
  final TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('TextFormField Demo'),
      ),
      body: Center(
        child: Form(
            autovalidateMode: AutovalidateMode.always,
            key: fromkey,
            child: Container(
              height: 500,
              width: 1330,
              child:  TextFormField(
                      controller: name,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person,
                        color: Colors.orange,),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orange)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orange)) ,
                          labelText: 'Enter your UserName',
                          hintText: 'Enter your UserName',
                          labelStyle: TextStyle(color: Colors.orange),
                          ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter Name";
                        }
                        return null;
                      },
                    ),
            )
        )
      ),
    );
  }
}
