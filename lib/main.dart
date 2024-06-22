import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_date_app/boxes/boxes.dart';
import 'package:note_date_app/helpful_methods/general_methods.dart';
import 'package:note_date_app/providers/providers.dart';
import 'package:note_date_app/screens/main_screen.dart';
import 'package:note_date_app/storage.dart';
import 'package:provider/provider.dart';

void main() async {
  await Hive.initFlutter();
  runApp(const NoteDateApp());
  Hive.registerAdapter(StorageAdapter());
  storageBox = await Hive.openBox<Storage>("storageBox");
}

class NoteDateApp extends StatelessWidget {
  const NoteDateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: buildThemeData(),
        home: const MainScreen(),
      ),
    );
  }
}
