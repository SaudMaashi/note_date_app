import 'package:flutter/material.dart';
import 'package:note_date_app/providers/providers.dart';
import 'package:note_date_app/screens/add_note_screen.dart';
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
    const AddNoteScreen(),
    const Scaffold(body: Center(child: Text("F"))),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const MyBottomNavigationBar(),
        body: _mainScreens[
            Provider.of<MyProvider>(context).bottomNavigationBarIndex],
      ),
    );
  }
}
