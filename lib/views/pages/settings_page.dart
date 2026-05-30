import 'package:flutter/material.dart';
import 'package:mosaic/app/authservice.dart';
import 'package:mosaic/data/notifiers.dart';
import 'package:mosaic/views/pages/welcome_page.dart';
import 'home_page.dart';
import 'app_loading_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  void logout() async {
    try {
      await authService.value.signOut();

      // Removed "AppData." prefix to target your actual top-level global variables
      seletedPageNotifier.value = 0;
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Column(
        children: [
          ListTile(
            title: Text("Log Out"),
            onTap: () {
              seletedPageNotifier.value = 0;
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomePage();
                  },
                ),
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
