import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_date_app/box/box.dart';
import 'package:note_date_app/helpful_methods/general_methods.dart';
import 'package:note_date_app/providers/providers.dart';
import 'package:note_date_app/screens/main_screen.dart';
import 'package:note_date_app/storage.dart';
import 'package:provider/provider.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(StorageAdapter());
  storageBox = await Hive.openBox<Storage>("Mr");
  runApp(ChangeNotifierProvider<MyProvider>(
      create: (BuildContext context) => MyProvider(),
      child: const NoteDateApp()));
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
