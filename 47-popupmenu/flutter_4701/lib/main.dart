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
        title: Text("Popup Menu Demo"),
        backgroundColor: Colors.yellow,
        actions: [
          PopupMenuButton<String>(
            onSelected: ((value) {
              print("Selected: $value");
            }),
            itemBuilder: (BuildContext context) {
            return [
               PopupMenuItem<String>(
                  value: 'Settings',
                  child: Row(
                    children: const [
                      Icon(Icons.settings),
                      SizedBox(width: 10),
                      Text('Settings'),
                    ],
                  ),
                ),
             PopupMenuItem<String>(
                  value: 'Logout',
                  child: Row(
                    children: const [
                      Icon(Icons.logout),
                      SizedBox(width: 10),
                      Text('Logout'),
                    ],
                  ),
                ),
             PopupMenuItem<String>(
                  value: 'Share',
                  child: Row(
                    children: const [
                      Icon(Icons.share),
                      SizedBox(width: 10),
                      Text('Share'),
                    ],
                  ),
                ),
            ];
          },)
        ],
      ),
      body: Center(child: Text("Press the Button in the Appbar to see the Popup menu!",
      style: TextStyle(color: Colors.black, fontSize: 20),),),
    );
  }
}