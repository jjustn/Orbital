import 'package:flutter/material.dart';
import 'package:mosaic/data/notifiers.dart';
import 'package:mosaic/views/pages/event_page.dart';
import 'package:mosaic/views/pages/home_page.dart';
import 'package:mosaic/views/pages/profile_page.dart';
import 'package:mosaic/views/pages/settings_page.dart';
import 'package:mosaic/views/widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), EventPage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MOSAIC"),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(
                  isDarkMode ? Icons.light_mode : Icons.dark_mode);
              },
            ),
          ),
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SettingsPage();
            },));
          }, icon: Icon(Icons.settings))
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: seletedPageNotifier,
        builder: (context, seletedPage, child) {
          return pages.elementAt(seletedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
