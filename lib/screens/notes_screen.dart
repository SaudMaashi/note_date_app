import 'package:flutter/material.dart';
import 'package:note_date_app/screens/sub_add_note_screen.dart';
import 'package:note_date_app/widgets/add_note_button.dart';
import 'package:note_date_app/widgets/my_search_bar.dart';
import 'package:note_date_app/widgets/notes_list_view.dart';
import 'package:provider/provider.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({
    super.key,
  });

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            Row(
              children: [
                const SearchBarWidget(),
                const SizedBox(width: 10),
                AddNoteButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SubAddNoteScreen()));
                  },
                ),
              ],
            ),
            const NotesScreenBody(),
          ],
        ),
      ),
    );
  }
}

class NotesScreenBody extends StatelessWidget {
  const NotesScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    if ("".isEmpty) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.5,
        child: const Center(
            child: Text("No notes yet", style: TextStyle(fontSize: 24))),
      );
    } else {
      return const Expanded(
        child: Column(
          children: [
            SizedBox(height: 30),
            Expanded(child: NotesListView()),
          ],
        ),
      );
    }
  }
}
