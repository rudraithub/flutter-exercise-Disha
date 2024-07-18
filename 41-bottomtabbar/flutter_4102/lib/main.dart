import 'package:flutter/material.dart';
import 'package:flutter_4102/page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: btb(),
    );
  }
}

class btb extends StatefulWidget {
  const btb({super.key});

  @override
  State<btb> createState() => _btbState();
}

class _btbState extends State<btb> {
  var a = [Home(),email(),Profile()];
  int selectitem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottam Tab Bar Example"),backgroundColor: Colors.purpleAccent,),

      body: Center(
        child: a[selectitem]
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.grey,),
          label: "Home",
          ),
           BottomNavigationBarItem(icon: Icon(Icons.email,color: Colors.orange,),
          label: "Email",
          ),
           BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.green,),
          label: "Profile",
          ),  
      ],
      currentIndex: selectitem,
      onTap: (value){
        setState(() {
          selectitem = value;
        });
      },
      ),
    );
  }
}


