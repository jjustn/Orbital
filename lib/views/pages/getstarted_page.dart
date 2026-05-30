import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mosaic/app/authservice.dart';
import 'package:mosaic/views/widget_tree.dart';

// make an Account Page
class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

// Registering the user function

class _GetStartedPageState extends State<GetStartedPage> {
  // Creating controllers to hold said values
  final TextEditingController controllerName = TextEditingController();
  final TextEditingController controllerPhone = TextEditingController();
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerUsername = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();

  String errorMessage = " ";

  void register() async {
    try {
      await authService.value.createAccount(
        email: controllerEmail.text,
        password: controllerPassword.text,
      );

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const WidgetTree()),
        (route) => false,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message ?? "There is an error";
      });
    }
  }

  // after doing necessary can dsipose of uneccesary data
  @override
  void dispose() {
    controllerName.dispose();
    controllerPhone.dispose();
    controllerEmail.dispose();
    controllerUsername.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  // Global key to access form values
  final _formKey = GlobalKey<FormState>();
  bool obscureBool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Get Started")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    width: 350.0,
                    child: TextFormField(
                      // controller name
                      controller: controllerName,
                      // Added a validator
                      validator: (value) => value!.trim().isEmpty
                          ? "Please enter your name"
                          : null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        label: const Text("Name"),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5.0)),

                  //
                  SizedBox(
                    width: 350.0,
                    child: TextFormField(
                      controller: controllerPhone,
                      validator: (value) => value!.trim().isEmpty
                          ? "Please enter your phone number"
                          : null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        label: const Text("Phone Number"),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5.0)),

                  //
                  SizedBox(
                    width: 350.0,
                    child: TextFormField(
                      controller: controllerEmail,
                      validator: (value) => value!.trim().isEmpty
                          ? "Please enter your email"
                          : null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        label: const Text("Email Address"),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5.0)),

                  //
                  SizedBox(
                    width: 350.0,
                    child: TextFormField(
                      controller: controllerUsername,
                      validator: (value) => value!.trim().isEmpty
                          ? "Please enter a username"
                          : null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        label: const Text("User Name"),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5.0)),

                  SizedBox(
                    width: 350.0,
                    child: TextFormField(
                      obscureText: obscureBool,
                      controller: controllerPassword,
                      validator: (value) => value!.trim().isEmpty
                          ? "Please enter a password"
                          : null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () =>
                              setState(() => obscureBool = !obscureBool),
                          icon: obscureBool
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                        ),
                        label: const Text("Password"),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0),

                  Text(
                    errorMessage,
                    style: const TextStyle(
                      color: Colors.redAccent,
                      fontSize: 14.0,
                    ),
                  ),

                  const SizedBox(height: 15.0),

                  // Update your FilledButton to trigger the validation and register()
                  FilledButton(
                    style: FilledButton.styleFrom(
                      minimumSize: const Size(200.0, 40.0),
                    ),
                    onPressed: () {
                      // if condition check
                      if (_formKey.currentState!.validate()) {
                        // Run the separate registration function
                        register();

                        // Navigate forward to the app tree
                      }
                    },
                    child: const Text("Create Account"),
                  ),
                ],
              ),
              /*
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
            ),*/
            ),
          ),
        ),
      ),
    );
  }
}
