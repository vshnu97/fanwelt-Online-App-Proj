import 'package:flutter/cupertino.dart';

class UpcomingMatchesProv extends ChangeNotifier {
  int selectionIndex = 0;

  changeColor(int index) {
    selectionIndex = index;

    notifyListeners();
  }

  int selectedIndex = 0;

  changeTab(index) {
    selectedIndex = index;
    notifyListeners();
  }
}
