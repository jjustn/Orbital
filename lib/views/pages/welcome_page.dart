import 'package:flutter/material.dart';
import 'package:mosaic/views/pages/getstarted_page.dart';
import 'package:mosaic/views/widget_tree.dart';
import 'package:mosaic/app/authservice.dart';
import 'package:mosaic/data/notifiers.dart';
import 'package:mosaic/views/pages/welcome_page.dart';
import 'home_page.dart';
import 'app_loading_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
  bool obscureBool = true;

  String errorMessage = "";

  // Log In function
  void logIn() async {
    try {
      await authService.value.signIn(
        email: controllerUserName.text,
        password: controllerPassword.text,
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message ?? "This is not working";
      });
    }
  }

  // disposing of data for now
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
                child: TextFormField(
                  controller: controllerUserName,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    label: Text("Email"),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              SizedBox(
                width: 300.0,
                child: TextFormField(
                  controller: controllerPassword,
                  obscureText: obscureBool,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    label: Text("Password"),
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
                  ),
                ),
              ),
              const SizedBox(height: 15.0),

              Text(
                errorMessage,
                style: const TextStyle(color: Colors.redAccent, fontSize: 14.0),
              ),

              const SizedBox(height: 15.0),
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

  void onLoginPressed() {
    logIn();
  }
}
