// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:note_date_app/utilities/constants.dart';

class MyBottomNavigationBar extends StatefulWidget {
  var index;
  MyBottomNavigationBar({super.key, required this.index});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.index,
      onTap: (value) {
        setState(() {
          widget.index = value;
        });
      },
      backgroundColor: backgroundColor,
      selectedFontSize: 24,
      unselectedFontSize: 20,
      selectedIconTheme: const IconThemeData(size: 30),
      unselectedIconTheme: const IconThemeData(color: secondaryColor, size: 27),
      unselectedItemColor: secondaryColor,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.notes,
            ),
            label: "Notes"),
        BottomNavigationBarItem(icon: Icon((Icons.date_range)), label: "Dates"),
      ],
    );
  }
}
