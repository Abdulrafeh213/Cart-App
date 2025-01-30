import '../models/item.dart';
import 'package:flutter/material.dart';

class ItemViewModel with ChangeNotifier {
  var itemList = <Item>[];
  bool value = true;
  bool color = true;

  add(Item item) {
    if (itemList.contains(item)) {
      return;
    }
    item.itemCount = 1;
    itemList.add(item);
    notifyListeners();
  }

  remove(Item item) {
    itemList.remove(item);
    notifyListeners();
  }

  increaseItemCount(Item item) {
    item.itemCount += 1;
    notifyListeners();
  }

  decreaseItemCount(Item item) {
    if (item.itemCount <= 1) {
      remove(item);
    } else {
      item.itemCount -= 1;
      notifyListeners();
    }
  }
}

// class MyBoolNotifier extends ChangeNotifier{
//   bool _myBoolValue = true;
//   bool _myColorValue = true;
//
//   bool get myBoolValue => _myBoolValue;
//   bool get myColorValue => _myColorValue;
// }
