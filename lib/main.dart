import 'package:flutter/material.dart';
//import 'package:message_app/pages/home_page.dart';
import 'package:message_app/pages/login_page.dart';
import 'package:message_app/themes.dart/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightMode,
      home: loginPage(),
    );
  }
}
