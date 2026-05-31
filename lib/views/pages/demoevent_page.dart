import 'package:flutter/material.dart';

class DemoEventPage extends StatefulWidget {
  const DemoEventPage({super.key});

  @override
  State<DemoEventPage> createState() => _DemoEventPageState();
}

class _DemoEventPageState extends State<DemoEventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.indigo),
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30.0, top: 10.0),
                  padding: EdgeInsets.all(2.0),
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Text(
                      "1 Jun 14:00",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0, top: 50.0),
                  padding: EdgeInsets.all(2.0),
                  width: 400,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Text(
                      "ORBITAL MILESTONE 1",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                      margin: EdgeInsets.only(left: 335.0),
                      padding: EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        radius: 22.5,
                        backgroundColor: Colors.teal,
                        child: Text("A", style: TextStyle(fontSize: 25.0, color: Colors.white),),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 305.0),
                      padding: EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        radius: 22.5,
                        backgroundColor: Colors.orange,
                        child: Text("J", style: TextStyle(fontSize: 25.0, color: Colors.white),),
                      ),
                    ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 20.0, top: 25.0),
              child: Text(
                "Event Description",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0, top: 20.0),
              child: Text(
                "Have a lot of fun coding and exploring new languages with friends. Required \nto produce: README, Video, Poster & Project Log",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(padding: EdgeInsets.all(20.0)),
            Container(
              padding: EdgeInsets.only(left: 20.0, top: 20.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Text(
                "Upload Photos",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700)),Container(
                      margin: EdgeInsets.only(left: 20.0),
                      padding: EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.teal,
                        child: Icon(Icons.camera_alt, color: Colors.white,)
                      ),
                    ),])
              ),
        ],
      ),
    );
  }
}
