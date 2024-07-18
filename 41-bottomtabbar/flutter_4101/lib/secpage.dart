 import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Page",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
             Icon(Icons.home,size: 25,),
          ],
        ),
       ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Search Screen",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          Icon(Icons.search,size: 25,),
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Profile Page",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
             Icon(Icons.person,size: 25,),
          ],
        ),
      ),
    );
  }
}
