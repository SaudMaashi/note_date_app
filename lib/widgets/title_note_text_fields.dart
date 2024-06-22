import 'package:flutter/material.dart';
import 'package:note_date_app/utilities/constants.dart';

class NoteTextField extends StatelessWidget {
  const NoteTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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

class TitleTextField extends StatelessWidget {
  const TitleTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          hintStyle: TextStyle(color: secondaryColor),
          border: InputBorder.none,
          hintText: "Enter a title"),
    );
  }
}
