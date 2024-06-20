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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 500,
              width: 500,
              color: Color.fromARGB(189, 194, 141, 187),
            ),
            Container(
               height: 350,
              width: 350,
              color: Colors.lightBlue,
              alignment: Alignment.topCenter,
              child: Text("My Image",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
            ),
           
               Container(
               height: 200,
              width: 200,
              child: Image.network("https://media.istockphoto.com/id/468965076/photo/patagonian-andes.jpg?s=1024x1024&w=is&k=20&c=UxU8tiGqdYfagnvLKcmj-hGPEo_Q8XaNMQ8nIjUo7Q0=",
              fit: BoxFit.fill,),
              
            )
            ],
        ),
      ),
    );
     }
}