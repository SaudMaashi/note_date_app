import 'package:flutter/material.dart';
import 'package:note_date_app/box/box.dart';
import 'package:note_date_app/providers/providers.dart';
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
    var myList = context.watch<MyProvider>().myList;
    return ListView.builder(
      itemCount: myList.length,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 84,
          child: Card(
            child: ListTile(
              title: Text(myList[index].title),
              subtitle: Text(myList[index].note),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  context.read<MyProvider>().removeFromList(myList[index]);
                  context.read<MyProvider>().removeFromBox(index);
                  context.read<MyProvider>().addStorageToBox();
                },
              ),
              // trailing: PopupMenuButton(
              //   color: secondaryColor,
              //   itemBuilder: (context) {
              //     return [
              //       const PopupMenuItem(
              //         value: 1,
              //         child: Row(
              //           children: [
              //             Icon(Icons.edit),
              //             SizedBox(
              //               width: 10,
              //             ),
              //             Text("Edit")
              //           ],
              //         ),
              //       ),
              //       PopupMenuItem(
              //         value: 2,
              //         child: Row(
              //           children: [
              //             IconButton(
              //               onPressed: () {
              //                 context
              //                     .read<MyProvider>()
              //                     .removeFromList(myList.elementAt(0));
              //               },
              //               icon: const Icon(
              //                 Icons.delete,
              //                 color: Colors.red,
              //               ),
              //             ),
              //             const SizedBox(
              //               width: 10,
              //             ),
              //             const Text("Delete")
              //           ],
              //         ),
              //       ),
              //     ];
              //   },
              //   offset: const Offset(0, 50),
              //   elevation: 2,
              // ),
            ),
          ),
        );
      },
    );
  }
}
