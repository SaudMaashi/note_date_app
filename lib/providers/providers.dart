import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  var index = 0;
  TextEditingController titleController = TextEditingController();
  TextEditingController noteController = TextEditingController();
}
