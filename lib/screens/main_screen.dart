import 'package:flutter/material.dart';
import 'package:note_date_app/providers/my_provider.dart';
import 'package:note_date_app/screens/notes_screen.dart';
import 'package:note_date_app/widgets/my_bottom_navigation_bar.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _mainScreens = [
    const NotesScreen(),
    const Scaffold(body: Center(child: Text("F"))),
  ];
  @override
  Widget build(BuildContext context) {
    var bottomNavigationBarIndex =
        Provider.of<MyProvider>(context).bottomNavigationBarIndex;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const MyBottomNavigationBar(),
        body: _mainScreens[bottomNavigationBarIndex],
      ),
    );
  }
}
