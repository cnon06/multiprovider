import 'package:flutter/cupertino.dart';

class ModelOfProvider1 with ChangeNotifier {
  String value = "";

void getValue(value) {
    this.value = value;
    notifyListeners();
  }
}

class ModelOfProvider2 with ChangeNotifier {
  String value = "";

void getValue(value) {
    this.value = value;
    notifyListeners();
  }
}

class ModelOfProvider3 with ChangeNotifier {
  String value = "";

void getValue(value) {
    this.value = value;
    notifyListeners();
  }
}