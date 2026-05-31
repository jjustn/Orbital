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
      body: Column(
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
          Expanded(
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
                        Padding(padding: EdgeInsets.all(5.0))
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
                    color: Colors.amber,
                  ),
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ),
        ],
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
