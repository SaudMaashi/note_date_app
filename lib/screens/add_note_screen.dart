import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
              const AddNoteScreenBody(),
            ],
          ),
        ),
      ),
    );
  }
}

class AddNoteScreenBody extends StatelessWidget {
  const AddNoteScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.watch<MyProvider>().myList.isEmpty) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.7,
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
