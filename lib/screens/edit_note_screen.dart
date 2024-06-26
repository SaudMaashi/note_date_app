import 'package:flutter/material.dart';
import 'package:note_date_app/providers/providers.dart';
import 'package:note_date_app/storage.dart';
import 'package:note_date_app/utilities/constants.dart';
import 'package:note_date_app/widgets/add_note_button.dart';
import 'package:note_date_app/widgets/title_note_text_fields.dart';
import 'package:provider/provider.dart';

class EditNoteScreen extends StatefulWidget {
  const EditNoteScreen({
    super.key,
  });

  @override
  State<EditNoteScreen> createState() => _EditNoteScreenState();
}

class _EditNoteScreenState extends State<EditNoteScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: Provider.of<MyProvider>(context).formKey,
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
                        TitleTextField(),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: NoteTextField(),
                        ),
                        const SizedBox(height: 20),
                        AddNoteButton(
                          onPressed: () {
                            if (Provider.of<MyProvider>(context, listen: false)
                                .formKey
                                .currentState!
                                .validate()) {
                              context.read<MyProvider>().addToList(Storage(
                                  title: Provider.of<MyProvider>(context,
                                          listen: false)
                                      .titleController
                                      .text,
                                  note: Provider.of<MyProvider>(context,
                                          listen: false)
                                      .noteController
                                      .text));
                              context.read<MyProvider>().addStorageToBox();
                              Provider.of<MyProvider>(context, listen: false)
                                  .titleController
                                  .clear();
                              Provider.of<MyProvider>(context, listen: false)
                                  .noteController
                                  .clear();
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
