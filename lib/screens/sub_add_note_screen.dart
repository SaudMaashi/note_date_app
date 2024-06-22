import 'package:flutter/material.dart';
import 'package:note_date_app/utilities/constants.dart';
import 'package:note_date_app/widgets/add_note_button.dart';
import 'package:note_date_app/widgets/title_note_text_fields.dart';

class SubAddNoteScreen extends StatelessWidget {
  const SubAddNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                      const TitleTextField(),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: const NoteTextField(),
                      ),
                      const SizedBox(height: 20),
                      AddNoteButton(
                        onPressed: () {
                          // TODO: Add Note
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
    );
  }
}
