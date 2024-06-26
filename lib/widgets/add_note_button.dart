import 'package:flutter/material.dart';
import 'package:note_date_app/utilities/constants.dart';

class AddNoteButton extends StatelessWidget {
  final Function() onPressed;

  const AddNoteButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: primaryColor,
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      child: MaterialButton(
        height: 30,
        minWidth: 50,
        onPressed: onPressed,
        child: const Icon(Icons.add, color: secondaryColor),
      ),
    );
  }
}
