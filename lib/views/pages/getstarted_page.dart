import 'package:flutter/material.dart';
import 'package:mosaic/views/widget_tree.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  bool obscureBool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Get Started")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  width: 350.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      label: Text("Name"),
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.all(5.0)),
                SizedBox(
                  width: 350.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      label: Text("Phone Number"),
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.all(5.0)),
                SizedBox(
                  width: 350.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      label: Text("Email Address"),
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.all(5.0)),
                SizedBox(
                  width: 350.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      label: Text("User Name"),
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.all(5.0)),
                SizedBox(
                  width: 350.0,
                  child: TextFormField(
                    obscureText: obscureBool,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscureBool = !obscureBool;
                          });
                        },
                        icon: obscureBool
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                      ),
                      label: Text("Password"),
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.all(10.0)),
                FilledButton(
                  style: FilledButton.styleFrom(minimumSize: Size(200.0, 40.0)),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return WidgetTree();
                        },
                      ),
                      (route) => false,
                    );
                  },
                  child: Text("Create Account"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
