import 'package:flutter/material.dart';
import 'package:note_date_app/box/box.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({
    super.key,
  });

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  var value = 0;
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
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () {},
              ),
            ),
          ),
        );
      },
    );
  }
}
