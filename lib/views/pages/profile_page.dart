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
              Container(
                      padding: EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        radius: 22.5,
                        backgroundColor: Colors.teal,
                        child: Text("A", style: TextStyle(fontSize: 25.0, color: Colors.white),),
                      ),
                    ),
              Padding(padding: EdgeInsets.only(left: 10.0)),
              Text("Arya", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
              Padding(padding: EdgeInsets.only(top: 4.0, left: 70.0)),
              Text("7 following \n7 followers", style: TextStyle(fontSize: 17.0),),
              Padding(padding: EdgeInsets.all(10.0)),
              CircleAvatar(child: Icon(Icons.search))
            ],),
            Padding(padding: EdgeInsets.all(10.0)),
            Container(
              padding: EdgeInsets.only(left: 20.0, top: 20.0),
              child: Text(
                "My Photos",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(padding: EdgeInsets.all(2.0)),
            Container(
              margin: EdgeInsets.only(left: 5.0, top: 5.0, right: 5.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.blueGrey,
                    ),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                  ),
                ]))
          ],)
      ),
    );
  }
}