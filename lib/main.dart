import 'package:flutter/material.dart';
import 'package:mosaic/data/notifiers.dart';
import 'package:mosaic/views/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: isDarkModeNotifier, builder: (context, isDarkMode, child) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MOSAIC',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: Color.fromRGBO(71, 148, 168, 100),
          brightness: isDarkMode ? Brightness.dark: Brightness.light,
        ),
      ),
      home: WelcomePage()
    );
    },);
  }
}
