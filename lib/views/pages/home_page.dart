import 'package:flutter/material.dart';
import 'package:mosaic/views/pages/demoevent_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20.0, top: 20.0),
              child: Text(
                "Hey Arya,",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(padding: EdgeInsets.all(5.0)),
            Container(
              padding: EdgeInsets.only(left: 20.0, top: 20.0),
              child: Text(
                "Current Event",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return DemoEventPage();
              },));},
              child: Container(
                margin: EdgeInsets.only(left: 20.0, top: 5.0, right: 20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.indigo,
                      ),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0, top: 10.0),
                      padding: EdgeInsets.all(2.0),
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          "1 Jun \n14:00",
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
                      margin: EdgeInsets.only(left: 10.0, top: 135.0),
                      padding: EdgeInsets.all(2.0),
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          "ORBITAL\nMILESTONE 1",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 295.0, top: 140.0),
                      padding: EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        radius: 22.5,
                        backgroundColor: Colors.teal,
                        child: Text("A", style: TextStyle(fontSize: 25.0, color: Colors.white),),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 265.0, top: 140.0),
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
            ),
            Padding(padding: EdgeInsets.all(5.0)),
            Container(
              padding: EdgeInsets.only(left: 20.0, top: 20.0),
              child: Text(
                "Your Upcoming Events",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(padding: EdgeInsets.all(5.0)),
            Container(
              margin: EdgeInsets.only(left: 20.0, top: 5.0, right: 20.0),
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
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0),
                    padding: EdgeInsets.all(2.0),
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: Text(
                        "2 Jun \n1000 - 1800",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 160.0),
                    padding: EdgeInsets.all(2.0),
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: Text(
                        "BEACH DAY!!!!",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 295.0, top: 140.0),
                    padding: EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      radius: 22.5,
                      backgroundColor: Colors.teal,
                      child: Icon(Icons.person_2_outlined),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 275.0, top: 140.0),
                    padding: EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      radius: 22.5,
                      backgroundColor: Colors.cyan,
                      child: Icon(Icons.person_2_outlined),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 255.0, top: 140.0),
                    padding: EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      radius: 22.5,
                      backgroundColor: Colors.lime,
                      child: Icon(Icons.person_2_outlined),
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(5.0)),
            Container(
              margin: EdgeInsets.only(left: 20.0, top: 5.0, right: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.redAccent,
                    ),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0),
                    padding: EdgeInsets.all(2.0),
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: Text(
                        "29 Jun \n14:00",
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
                    margin: EdgeInsets.only(left: 10.0, top: 135.0),
                    padding: EdgeInsets.all(2.0),
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: Text(
                        "ORBITAL\nMILESTONE 2",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 295.0, top: 140.0),
                    padding: EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      radius: 22.5,
                      backgroundColor: Colors.teal,
                      child: Icon(Icons.person_2_outlined),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 275.0, top: 140.0),
                    padding: EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      radius: 22.5,
                      backgroundColor: Colors.orange,
                      child: Icon(Icons.person_2_outlined),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
