// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:note_date_app/widgets/add_note_button.dart';
import 'package:note_date_app/widgets/my_bottom_navigation_bar.dart';
import 'package:note_date_app/widgets/my_search_bar.dart';
import 'package:note_date_app/widgets/notes_list_view.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({
    super.key,
  });

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  var _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(index: _index),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: [
              const Row(
                children: [
                  MySearchBarWidget(),
                  SizedBox(width: 10),
                  AddNoteButton(),
                ],
              ),
              const SizedBox(height: 30),
              Expanded(
                child: NotesListView(index: _index),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
