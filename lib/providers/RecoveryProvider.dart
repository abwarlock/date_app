import 'package:flutter/material.dart';

class Recovery with ChangeNotifier {
  String _data;

  Recovery(this._data);

  String get data => _data;

  set data(String value) {
    _data = value;
  }
  getCounter() => _data;

  void setData(String recoveryData) {
    _data = recoveryData;
    notifyListeners();
  }

}
