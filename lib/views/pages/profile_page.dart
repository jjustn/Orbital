import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              CircleAvatar(radius: 30.0, backgroundColor: Colors.teal,),
              Padding(padding: EdgeInsets.only(left: 10.0)),
              Text("Arya", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),)
            ],)
          ],)
      ),
    );
  }
}