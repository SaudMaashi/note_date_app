// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class NotesListView extends StatefulWidget {
  var index = 0;
  NotesListView({
    super.key,
    required int index,
  });

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const NoteCard();
      },
    );
  }
}

class NoteCard extends StatelessWidget {
  const NoteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 84,
        width: MediaQuery.of(context).size.width * 0.1,
        child: const Card());
  }
}
