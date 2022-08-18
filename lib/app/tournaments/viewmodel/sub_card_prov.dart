import 'package:flutter/cupertino.dart';

class SubCardProv extends ChangeNotifier {
  int selectionIndex = 0;
  changeColor(int index) {
    selectionIndex = index;

    notifyListeners();
  }
}
