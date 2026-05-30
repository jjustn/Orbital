import 'package:flutter/material.dart';
import 'package:mosaic/app/authservice.dart';
import 'package:mosaic/data/notifiers.dart';
import 'package:mosaic/views/pages/welcome_page.dart';
import '../views/pages/home_page.dart';
import '../views/pages/app_loading_page.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key, this.pageIfNotConnected});

  final Widget? pageIfNotConnected;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: authService,
      builder: (context, authService, child) {
        return StreamBuilder(
          stream: authService.authStateChanges,
          builder: (context, snapshot) {
            Widget widget;
            if (snapshot.connectionState == ConnectionState.waiting) {
              widget = AppLoadingPage();
            } else if (snapshot.hasData) {
              widget = HomePage();
            }
            return WelcomePage();
          },
        ); // StreamBuilder
      },
    ); // ValueListenableBuilder
  }
}
