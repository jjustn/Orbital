import 'package:flutter/material.dart';
import 'package:mosaic/views/pages/getstarted_page.dart';
import 'package:mosaic/views/widget_tree.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ClipRRect(
              child: Image.asset('assets/images/mosaic.jpg', width: 250.0),
            ),
          ),
          Padding(padding: EdgeInsets.all(20.0)),
          SizedBox(
            width: 300.0,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                label: Text("User Name"),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          SizedBox(
            width: 300.0,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                label: Text("Password"),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          TextButton(
            style: TextButton.styleFrom(minimumSize: Size(200.0, 40.0)),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WidgetTree();
                  },
                ),
              );
            },
            child: Text("Login"),
          ),
          FilledButton(
            style: FilledButton.styleFrom(minimumSize: Size(200.0, 40.0)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return GetStartedPage();
                  },
                ),
              );
            },
            child: Text("Get Started"),
          ),
        ],
      ),
    );
  }
}
