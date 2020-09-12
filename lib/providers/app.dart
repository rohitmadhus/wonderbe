import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier {
  bool isLoading = false;
  List<bool> sort = [true, false, false, false];

  void changeSort({sortId}) {
    sort = [false, false, false, false];
    sort[sortId] = true;
    notifyListeners();
  }

  void changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
