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
  bool trvl= false;
  bool musc= false;
  bool shp=false;
  bool rd=false;
  bool swm=false;
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
                Checkbox(value: trvl, onChanged: (value){
                  setState(() {
                    trvl=value!;
                  });
                },
                checkColor: Colors.white,
                    activeColor: Colors.blue,),
                Text("Travel"),
              ],
            ),
                 SizedBox(height: 10,),

                Row(
                  children: [
                    Checkbox(value: musc, onChanged: (value){
                      setState(() {
                        musc=value!;
                      });
                      },
                    checkColor: Colors.white,
                    activeColor: Colors.blue,
                     ),
                     Text("Music")
                  ],
                ),
                 SizedBox(height: 10,),

                Row(
                  children: [
                    Checkbox(value: shp, onChanged: (value){
                      setState(() {
                        shp=value!;
                      });
                      },
                   checkColor: Colors.white,
                    activeColor: Colors.blue,
                     ),
                     Text("Shopping")
                  ],
                ),
                 SizedBox(height: 10,),

                Row(
                  children: [
                    Checkbox(value: rd, onChanged: (value){
                      setState(() {
                        rd=value!;
                      });
                      },
                   checkColor: Colors.white,
                    activeColor: Colors.blue,
                     ),
                     Text("Riding")
                  ],
                ),
                 SizedBox(height: 10,),

                Row(
                  children: [
                    Checkbox(value: swm, onChanged: (value){
                      setState(() {
                        swm=value!;
                      });
                      },
                   checkColor: Colors.white,
                    activeColor: Colors.blue,
                     ),
                     Text("swimming")
                  ],
                ),
                
              ],
            
          
        ),
      )
    );
  }
}