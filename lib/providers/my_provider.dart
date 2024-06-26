import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  var bottomNavigationBarIndex = 0;
  final titleController = TextEditingController();
  final noteController = TextEditingController();

  void setBottomNavigationBarIndex(var index) {
    bottomNavigationBarIndex = index;
    notifyListeners();
  }
}
