
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
      home: custompaint(),
    );
  }
}

class custompaint extends StatefulWidget {
  const custompaint({super.key});

  @override
  State<custompaint> createState() => custompaintState();
}

class custompaintState extends State<custompaint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Custompaint Demo",style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          child: CustomPaint(
            foregroundPainter: Linepaint(),
          ),
        ),
      ),
    );
  }
}

class Linepaint extends CustomPainter {  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
    ..color= Colors.blue
    ..strokeWidth = 5;
    canvas.drawLine(
      Offset(size.width * 1/2, size.height*1/4),
      Offset(size.width*1/6, size.height*3/4), paint);
    canvas.drawLine(
        Offset(size.width* 1/2, size.height* 1/4),
        Offset(size.width*5/6, size.height*3/4), paint);
    canvas.drawLine(
        Offset(size.width* 1/6, size.height* 3/4),
        Offset(size.width*5/6, size.height*3/4), paint);
      
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw false;
  }
}
