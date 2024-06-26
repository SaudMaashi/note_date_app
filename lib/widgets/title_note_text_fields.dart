// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:note_date_app/providers/providers.dart';
import 'package:note_date_app/utilities/constants.dart';
import 'package:provider/provider.dart';

class TitleTextField extends StatefulWidget {
  var initialValue;
  TitleTextField({
    super.key,
    this.initialValue = "",
  });

  @override
  State<TitleTextField> createState() => _TitleTextFieldState();
}

class _TitleTextFieldState extends State<TitleTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "This field is required";
        }
        return null;
      },
      controller: Provider.of<MyProvider>(context).titleController,
      decoration: const InputDecoration(
          hintStyle: TextStyle(color: secondaryColor),
          border: InputBorder.none,
          hintText: "Enter a title"),
    );
  }
}

class NoteTextField extends StatefulWidget {
  var initialValue;
  NoteTextField({
    super.key,
    this.initialValue = "",
  });

  @override
  State<NoteTextField> createState() => _NoteTextFieldState();
}

class _NoteTextFieldState extends State<NoteTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "This field is required";
        }
        return null;
      },
      controller: Provider.of<MyProvider>(context).noteController,
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
