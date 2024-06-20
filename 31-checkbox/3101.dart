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
  bool check= false;
  bool chef= false;
  bool crm=false;
  bool chs=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(
              children: [
                Checkbox(value: check, onChanged: (value){
                  setState(() {
                    check=value!;
                  });
                },
                checkColor: Colors.white,
                    activeColor: Colors.blue,),
                Text("Chess"),
              ],
            ),
                 SizedBox(height: 10,),

                Row(
                  children: [
                    Checkbox(value: chef, onChanged: (value){
                      setState(() {
                        chef=value!;
                      });
                      },
                    checkColor: Colors.white,
                    activeColor: Colors.blue,
                     ),
                     Text("Cricket")
                  ],
                ),
                 SizedBox(height: 10,),

                Row(
                  children: [
                    Checkbox(value: crm, onChanged: (value){
                      setState(() {
                        crm=value!;
                      });
                      },
                   checkColor: Colors.white,
                    activeColor: Colors.blue,
                     ),
                     Text("Carrom")
                  ],
                ),
                 SizedBox(height: 10,),

                Row(
                  children: [
                    Checkbox(value: chs, onChanged: (value){
                      setState(() {
                        chs=value!;
                      });
                      },
                   checkColor: Colors.white,
                    activeColor: Colors.blue,
                     ),
                     Text("Hockey")
                  ],
                ),
                
              ],
            
          
        ),
      )
    );
  }
}