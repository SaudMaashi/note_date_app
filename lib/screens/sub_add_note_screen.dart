import 'package:flutter/material.dart';
import 'package:note_date_app/providers/my_provider.dart';
import 'package:note_date_app/utilities/constants.dart';
import 'package:note_date_app/widgets/add_note_button.dart';
import 'package:note_date_app/widgets/title_note_text_fields.dart';
import 'package:provider/provider.dart';

class SubAddNoteScreen extends StatefulWidget {
  const SubAddNoteScreen({
    super.key,
  });

  @override
  State<SubAddNoteScreen> createState() => _SubAddNoteScreenState();
}

class _SubAddNoteScreenState extends State<SubAddNoteScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    final formKey = Provider.of<MyProvider>(context).formKey;
    final titleController =
        Provider.of<MyProvider>(context, listen: false).titleController;
    final noteController =
        Provider.of<MyProvider>(context, listen: false).noteController;
    return SafeArea(
      child: Form(
        key: formKey,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: secondaryColor,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.2),
                        TitleTextField(),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: NoteTextField(),
                        ),
                        const SizedBox(height: 20),
                        AddNoteButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              titleController.clear();
                              noteController.clear();
                              Navigator.pop(context);
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
