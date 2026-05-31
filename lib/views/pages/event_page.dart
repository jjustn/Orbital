import 'package:flutter/material.dart';
import 'package:mosaic/views/pages/addevent_page.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  suffixIcon: Icon(Icons.search_outlined),
                  hintText: "Search Events",
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            SizedBox(
              height: 50.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(padding: EdgeInsets.all(5.0)),
                  Column(
                    children: [
                      Row(
                        children: [
                          FilledButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.sports),
                            label: Text("Sports"),
                          ),
                          Padding(padding: EdgeInsets.all(5.0)),
                          FilledButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.airplanemode_on),
                            label: Text("Travel"),
                          ),
                          Padding(padding: EdgeInsets.all(5.0)),
                          FilledButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.movie_creation),
                            label: Text("Movies"),
                          ),
                          Padding(padding: EdgeInsets.all(5.0)),
                          FilledButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.local_dining),
                            label: Text("Food & Drinks"),
                          ),
                          Padding(padding: EdgeInsets.all(5.0)),
                          FilledButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.music_note),
                            label: Text("Concerts"),
                          ),
                          Padding(padding: EdgeInsets.all(5.0)),
                          FilledButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.more_horiz),
                            label: Text("Others"),
                          ),
                          Padding(padding: EdgeInsets.all(5.0)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0, top: 20.0),
              child: Text(
                "Events",
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
                    margin: EdgeInsets.only(left: 295.0, top: 140.0),
                    padding: EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      radius: 22.5,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: Icon(Icons.sports),
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
                    margin: EdgeInsets.only(left: 295.0, top: 140.0),
                    padding: EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      radius: 22.5,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: Icon(Icons.more_horiz),
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
                      color: Colors.cyan,
                    ),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0),
                    padding: EdgeInsets.all(2.0),
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: Text(
                        "29 Jun - 3 Jul \n08:00 - 23:59",
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
                    margin: EdgeInsets.only(left: 295.0, top: 140.0),
                    padding: EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      radius: 22.5,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: Icon(Icons.flight),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 155.0),
                    padding: EdgeInsets.all(2.0),
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: Text(
                        "JB TRIP",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(40.0)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return AddEventPage();
              },
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
