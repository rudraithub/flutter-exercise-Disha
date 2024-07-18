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
             Icon(Icons.home,size: 25,color: Colors.grey,),
          ],
        ),
       ),
    );
  }
}

class email extends StatelessWidget {
  const email({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Email Screen",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.red),),
          Icon(Icons.email,size: 25,color: Colors.orange,),
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
             Icon(Icons.person,size: 25,color: Colors.green,),
          ],
        ),
      ),
    );
  }
}
