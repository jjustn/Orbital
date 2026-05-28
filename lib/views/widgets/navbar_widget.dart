import 'package:flutter/material.dart';
import 'package:mosaic/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: seletedPageNotifier, builder: (context, selectedPage, child) {
      return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.calendar_month), label: "Events"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ],
          onDestinationSelected: (value) {
            seletedPageNotifier.value = value;
          },
          selectedIndex: selectedPage,
        );
    },);
  }
}