import 'package:flutter/material.dart';
import 'package:note_date_app/providers/my_provider.dart';
import 'package:note_date_app/utilities/constants.dart';
import 'package:provider/provider.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final titleController = Provider.of<MyProvider>(context).titleController;
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "This field is required";
        }
        return null;
      },
      controller: titleController,
      decoration: const InputDecoration(
          hintStyle: TextStyle(color: secondaryColor),
          border: InputBorder.none,
          hintText: "Enter a title"),
    );
  }
}

class NoteTextField extends StatelessWidget {
  const NoteTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final noteController = Provider.of<MyProvider>(context).noteController;
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "This field is required";
        }
        return null;
      },
      controller: noteController,
      maxLines: 100000,
      decoration: const InputDecoration(
        hintStyle: TextStyle(color: secondaryColor),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: secondaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        hintText: "Enter some notes",
      ),
    );
  }
}
