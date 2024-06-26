import 'package:flutter/material.dart';
import 'package:note_date_app/providers/my_provider.dart';
import 'package:note_date_app/utilities/constants.dart';
import 'package:provider/provider.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    var bottomNavigationBarIndex =
        context.watch<MyProvider>().bottomNavigationBarIndex;

    return BottomNavigationBar(
      currentIndex: bottomNavigationBarIndex,
      onTap: (value) {
        Provider.of<MyProvider>(context, listen: false)
            .setBottomNavigationBarIndex(value);
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
