import 'package:flutter/material.dart';
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
}
