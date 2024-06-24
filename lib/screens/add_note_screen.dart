import 'package:flutter/material.dart';
import 'package:note_date_app/providers/providers.dart';
import 'package:note_date_app/screens/sub_add_note_screen.dart';
import 'package:note_date_app/widgets/add_note_button.dart';
import 'package:note_date_app/widgets/my_search_bar.dart';
import 'package:note_date_app/widgets/notes_list_view.dart';
import 'package:provider/provider.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({
    super.key,
  });

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  @override
  Widget build(BuildContext context) {
    var myList = context.watch<MyProvider>().myList;
    return Scaffold(
      body: myList.isEmpty
          ? Column(
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
                const Center(
                  child: Text(
                    "No notes yet",
                    style: TextStyle(fontSize: 24),
                  ),
                )
              ],
            )
          : Padding(
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
                                  builder: (context) =>
                                      const SubAddNoteScreen()));
                        }),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Expanded(
                      child: NotesListView(),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
