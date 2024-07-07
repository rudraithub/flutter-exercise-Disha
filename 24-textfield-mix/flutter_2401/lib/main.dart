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
  final TextEditingController name2 = TextEditingController();
  final TextEditingController name3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
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
                      controller: name,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink)),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink)),
                           prefixIcon: Icon(Icons.person,color: Colors.pink,),
                           suffixIcon: Icon(Icons.visibility,color: Colors.pink,),
                          labelText: 'Enetr your Username',
                          hintText: 'Enter your Username'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter Name";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                       controller: name2,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person,color: Colors.pink,),
                            labelText: 'Enter your User Name',
                             ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Number";
                          }
                          return null;
                        },
                    ),
                     SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: TextFormField(
                        controller: name3,
                        decoration: InputDecoration(
                          hoverColor: Colors.amber,
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person,color: Colors.pink,),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink)),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink)),
                            labelText: 'Enter a search term',
                            hintText: 'Enter a search term'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter searchterm";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (fromkey.currentState!.validate()) {
                            print(name.text);
                            print(name2.text);
                            print(name3.text);
                          }
                        },
                        child: Text("Submit"))
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
