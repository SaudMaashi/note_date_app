import 'package:flutter/material.dart';
import 'package:note_date_app/helpful_methods/general_methods.dart';
import 'package:note_date_app/screens/main_screen.dart';

void main() {
  runApp(const NoteDateApp());
}

class NoteDateApp extends StatelessWidget {
  const NoteDateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(),
      home: const MainScreen(),
    );
  }
}
