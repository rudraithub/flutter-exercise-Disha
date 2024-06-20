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
              height: 600,
              width: 600,
              color: Color(0xFF072F5F),
            ),
            Container(
               height: 450,
              width: 450,
              color: Color(0xFF1261A0),
            ),
              Container(
              height: 300,
              width: 300,
              color: Color(0xFF3895D3),
            ),
            Container(
               height: 150,
              width: 150,
              color: Color(0xFF58CCED),
              child: Icon(Icons.lock),
            ),
          ],
        ),
      ),
    );
     }
}