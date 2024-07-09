import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        backgroundColor: Colors.amber,
        title: Text("InkWell Demo"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
                print('tapped on');
              },
              hoverColor: Color.fromARGB(255, 31, 203, 226),
              splashColor: Color.fromARGB(255, 228, 208, 225),
              child: Container(
                height: 200,
                width: 200,
                alignment: Alignment.center,
                child: Text("Tap Me!",style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,fontSize: 18
                ),)
              ),
        ),
      ),
    );
  }
}


