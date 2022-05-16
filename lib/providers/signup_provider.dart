import 'package:flutter/material.dart';

class SignUpHelper with ChangeNotifier {
  int _count = 1;
  int get getCount => _count;

  void plus() {
    _count++;
    notifyListeners();
  }
}
