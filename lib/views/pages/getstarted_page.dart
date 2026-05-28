import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Get Started")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 350.0,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                    label: Text("Name"),
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.all(5.0)),
              SizedBox(
                width: 350.0,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                    label: Text("Phone Number"),
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.all(5.0)),
              SizedBox(
                width: 350.0,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                    label: Text("Email Address"),
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.all(5.0)),
              SizedBox(
                width: 350.0,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                    label: Text("User Name"),
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.all(5.0)),
              SizedBox(
                width: 350.0,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                    label: Text("Password"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
