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
      theme:ThemeData(
        snackBarTheme: SnackBarThemeData(backgroundColor: Colors.brown),
      ),
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
        backgroundColor: Colors.brown,
        title: Text("Snack Bar Example",
        style: TextStyle(
          color: Colors.white
        ),),
      ),
      body:Builder(builder: (context) {
        return Center(
          child: ElevatedButton(onPressed: (){
            final msg = SnackBar(content: Text("This is demo SnackBar",
            style: TextStyle(color: Colors.white),
          ),
             showCloseIcon: true,
             behavior: SnackBarBehavior.floating,
             action: SnackBarAction(label: "Click", onPressed:(){},
             ),
            );
            ScaffoldMessenger.of(context).showSnackBar(msg);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
          ),
           child: Text("Show SnackBar",
           style: TextStyle(color: Colors.white),)),
        );
      },)
    );
  }
}