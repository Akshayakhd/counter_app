import 'package:counter_app/countmodel.dart';
import 'package:flutter/material.dart';

class Countcontroller extends ChangeNotifier {
  Countmodel _count = Countmodel(0);
  Countmodel get count => _count;

  void increment() {
    _count.count++;
    notifyListeners();
  }

  void decrement() {
    if (_count.count > 0) {
      _count.count--;
      notifyListeners();
    }
  }

  void reset() {
    _count.count = 0;
    notifyListeners();
  }
}
