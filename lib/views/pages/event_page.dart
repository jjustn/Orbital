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
      body: Center(child: Text("Event Page")),
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
