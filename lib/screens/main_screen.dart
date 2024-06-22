import 'package:flutter/material.dart';
import 'package:note_date_app/widgets/add_note_button.dart';
import 'package:note_date_app/widgets/my_search_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    MySearchBarWidget(),
                    SizedBox(width: 10),
                    AddNoteButton(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
