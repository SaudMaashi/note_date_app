import 'package:flutter/material.dart';
import 'package:note_date_app/box/box.dart';
import 'package:note_date_app/storage.dart';
import 'package:uuid/uuid.dart';

class MyProvider with ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  var bottomNavigationBarIndex = 0;
  final titleController = TextEditingController();
  final noteController = TextEditingController();
  final uuid = const Uuid();

  void setBottomNavigationBar(int index) {
    bottomNavigationBarIndex = index;
    notifyListeners();
  }

  final List<dynamic> myList = storageBox.values.toList();

  void addToList(Storage data) {
    myList.add(data);
    notifyListeners();
  }

  void removeFromList(Storage data) {
    myList.remove(data);
    notifyListeners();
  }

  void addStorageToBox() {
    for (var storage in myList) {
      if (!storageBox.values.contains(storage)) {
        storageBox.put(uuid.v1(), storage);
      }
    }
    notifyListeners();
  }

  void removeFromBox(int index) {
    storageBox.deleteAt(index);
    notifyListeners();
  }
}
