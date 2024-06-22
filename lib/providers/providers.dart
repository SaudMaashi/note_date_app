import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class MyProvider extends ChangeNotifier {
  var bottomNavigationBarIndex = 0;
  final titleController = TextEditingController();
  final noteController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final uuid = const Uuid();
}
