// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:note_date_app/box/box.dart';
import 'package:note_date_app/providers/providers.dart';
import 'package:note_date_app/utilities/constants.dart';
import 'package:provider/provider.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({
    super.key,
  });

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: storageBox.length,
      itemBuilder: (context, index) {
        return NoteCard(
          index: index,
        );
      },
    );
  }
}

class NoteCard extends StatefulWidget {
  var index;
  NoteCard({
    super.key,
    required this.index,
  });

  @override
  State<NoteCard> createState() => _NoteCardState();
}

class _NoteCardState extends State<NoteCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 84,
        child: Card(
          child: ListTile(
            title: Text(storageBox.getAt(widget.index).title),
            subtitle: Text(storageBox.getAt(widget.index).note),
            trailing: PopupMenuButton(
              color: secondaryColor,
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: [
                      Icon(Icons.edit),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Edit")
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Delete")
                    ],
                  ),
                ),
              ],
              offset: const Offset(0, 50),
              elevation: 2,
            ),
          ),
        ));
  }
}
