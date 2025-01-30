import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class MyBoolNotifier extends ChangeNotifier {
  bool _myBoolValue = true;
  bool _myColorValue = true;

  bool get myBoolValue => _myBoolValue;
  bool get myColorValue => _myColorValue;

  void updateBoolValueTrue(bool newValue, bool newValue2) {
    _myBoolValue = newValue;
    _myColorValue = newValue2;
    notifyListeners();
  }

  void updateBoolValueFalse(bool newValue, bool newValue2) {
    _myBoolValue = newValue;
    _myColorValue = newValue2;
    notifyListeners();
  }
}
