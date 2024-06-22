import 'package:flutter/material.dart';
import 'package:note_date_app/utilities/constants.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({
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
        child: Card(
          child: ListTile(
            title: const Text("Hi"),
            subtitle: const Text("Hello"),
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
                const PopupMenuItem(
                  value: 2,
                  child: Row(
                    children: [
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Delete")
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
