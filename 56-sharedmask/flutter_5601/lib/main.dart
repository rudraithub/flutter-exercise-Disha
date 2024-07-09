
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      appBar:
          AppBar(title: Text("ShaderMask demo"), backgroundColor: const Color.fromARGB(255, 247, 113, 158)),
      body: Padding(
          padding: EdgeInsets.all(8),
          child: Center(
              child: ShaderMask(
            shaderCallback: (Rect bounds) {
              return RadialGradient(
                center: Alignment.topRight,
                radius: 4,
                colors: [
                  Colors.redAccent,
                  Colors.blueAccent,
                  Colors.black,
                  Colors.green
                ],
                tileMode: TileMode.repeated,
              ).createShader(bounds);
            },
            child: Text(
              'Shader Mask Demo',
              style: TextStyle(fontSize: 40, 
              color: Colors.white
              ),
            ),
          ))),
    );
  }
}
