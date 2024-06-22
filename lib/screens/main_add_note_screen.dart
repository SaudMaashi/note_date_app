import 'package:flutter/material.dart';
import 'package:note_date_app/providers/providers.dart';
import 'package:note_date_app/screens/sub_add_note_screen.dart';
import 'package:note_date_app/widgets/add_note_button.dart';
import 'package:note_date_app/widgets/my_bottom_navigation_bar.dart';
import 'package:note_date_app/widgets/my_search_bar.dart';
import 'package:note_date_app/widgets/notes_list_view.dart';
import 'package:provider/provider.dart';

class MainAddNoteScreen extends StatefulWidget {
  const MainAddNoteScreen({
    super.key,
  });

  @override
  State<MainAddNoteScreen> createState() => _MainAddNoteScreenState();
}

class _MainAddNoteScreenState extends State<MainAddNoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MyBottomNavigationBar(),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  const SearchBarWidget(),
                  const SizedBox(width: 10),
                  AddNoteButton(onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SubAddNoteScreen()));
                  }),
                ],
              ),
              const SizedBox(height: 30),
              Expanded(
                child: NotesListView(
                    index: Provider.of<MyProvider>(context).index),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
