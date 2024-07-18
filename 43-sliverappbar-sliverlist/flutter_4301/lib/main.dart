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
              leading: Icon(Icons.menu),
              actions: [Row(
                children: [
                  Icon(Icons.search,color: Colors.black,),
                  SizedBox(width: 25,),
                  Icon(Icons.more_vert_rounded,color: Colors.black,),
                  SizedBox(width: 10,)
                ],
              )],
              pinned: true,
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver AppBar Demo',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
              background: Image.network('https://cdn.pixabay.com/photo/2024/02/12/21/34/sunset-8569636_960_720.jpg',
              fit: BoxFit.cover,),
             ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context,int index) {
                  return ListTile(
                    title: Text('Item ${0+ index}'),
              );              
            },
            childCount: 20
             ))
          ],
        
        ),
    );
  }
}



