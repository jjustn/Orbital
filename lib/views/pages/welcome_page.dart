import 'package:flutter/material.dart';
import 'package:mosaic/views/pages/getstarted_page.dart';
import 'package:mosaic/views/widget_tree.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  TextEditingController controllerUserName = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  String testUserName =
      "arya"; // test => to be linked with firebase for proper auth
  String testPassword =
      "orbital26"; // test => to be linked with firebase for proper auth

  @override
  void dispose() {
    controllerUserName.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
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
                  controller: controllerUserName,
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
                  controller: controllerPassword,
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
                  onLoginPressed();
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
        ),
      ),
    );
  }

  void onLoginPressed() { // there has to be a better way than nested if calls
    if (controllerUserName.text == "" || controllerPassword.text == "") {
      // alert message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: Duration(seconds: 2),
          content: Text(
            "Input your username/password",
            style: TextStyle(color: Colors.white),
          ),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Color.fromRGBO(71, 148, 168, 100),
        ),
      );
    }

    if (controllerUserName.text != "" && controllerPassword.text != "") {
      // alert to show wrong username/password
      if (testUserName != controllerUserName.text &&
          testPassword != controllerPassword.text) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: Duration(seconds: 2),
            content: Text(
              "Wrong username/password",
              style: TextStyle(color: Colors.white),
            ),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Color.fromRGBO(71, 148, 168, 100),
          ),
        );
      }
      if (testUserName == controllerUserName.text &&
          testPassword == controllerPassword.text) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return WidgetTree();
            },
          ),
        );
      }
    }
  }
}
