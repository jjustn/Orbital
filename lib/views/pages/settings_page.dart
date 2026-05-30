import 'package:flutter/material.dart';
import 'package:mosaic/data/notifiers.dart';
import 'package:mosaic/views/pages/welcome_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                  builder: (context) {
                    return WelcomePage();
                  },
                ), (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
