import 'package:flutter/material.dart';
import 'package:note_date_app/box/box.dart';
import 'package:note_date_app/utilities/constants.dart';

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
        return SizedBox(
          height: 84,
          child: Card(
            child: ListTile(
              title: Text(storageBox.getAt(index).title),
              subtitle: Text(storageBox.getAt(index).note),
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
          ),
        );
      },
    );
  }
}
