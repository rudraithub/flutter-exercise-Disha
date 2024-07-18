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
      home: sliverbar(),
    );
  }
}

class sliverbar extends StatefulWidget {
  const sliverbar({super.key});

  @override
  State<sliverbar> createState() => _sliverbarState();
}

class _sliverbarState extends State<sliverbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: Icon(Icons.menu,color: Colors.amber,),
              actions: [Row(
                children: [
                  Icon(Icons.comment,color: Colors.amber,),
                  SizedBox(width: 13,),
                  Icon(Icons.settings,color: Colors.amber,),
                  SizedBox(width: 13),
                  Icon(Icons.login,color: Colors.amber,),
                   SizedBox(width: 10),
                ],
              )],
              pinned: true,
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
              title: Text("I Am Flutter Devloper",style: TextStyle(color: Color.fromARGB(255, 228, 170, 238),
              fontSize: 25,),),
              background: Image.network('https://cdn.pixabay.com/photo/2015/11/05/06/14/background-1023739_1280.jpg',
              fit: BoxFit.cover,),
             ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context,int index) {
                  return Container(
                  color: index.isOdd ? Color.fromARGB(255, 228, 170, 238) : Colors.white,
                  height: 80,
                  child: Center(
                    child: 
                    Text("${0+index}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 109, 20, 124)),),
                  ),
                );            
            },
            childCount: 20
             ))
          ],
        
        ),
    );
  }
}



