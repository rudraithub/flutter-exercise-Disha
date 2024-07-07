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
  final TextEditingController psword = TextEditingController();
  final TextEditingController loginid = TextEditingController();
  final TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Text Form Field Demo'),
      ),
      body: Center(
        child: Form(
            autovalidateMode: AutovalidateMode.always,
            key: fromkey,

            child: Container(
              
                height: 1000,
              width: 1300,
             child: Container(
                   height: 360,
              width: 1300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 17,),
                    TextFormField(
                      controller: psword,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                           prefixIcon: Icon(Icons.person,color: Colors.green,),
                           suffixIcon: Icon(Icons.visibility,color: Colors.green,),
                          labelText: 'Enetr your Password',
                          hintStyle: TextStyle(color: Colors.green),
                           labelStyle: TextStyle(color: Colors.green),
                          hintText: 'Enter your Password'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter password";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                       controller: loginid,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person,color: Colors.green,),
                            labelText: 'Enter your Login ID',
                            labelStyle: TextStyle(color: Colors.green),
                             ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter yor ID";
                          }
                          return null;
                        },
                    ),
                     SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: TextFormField(
                        controller: name,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                             hintStyle: TextStyle(color: Colors.green),
                             labelStyle:  TextStyle(color: Colors.green),
                            prefixIcon: Icon(Icons.person,color: Colors.green,),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                            labelText: 'Enter a Name',
                            hintText: 'Enter a Name'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter Name";
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
