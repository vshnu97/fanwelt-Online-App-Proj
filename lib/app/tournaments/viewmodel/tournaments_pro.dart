import 'package:flutter/cupertino.dart';

class TournamentProv extends ChangeNotifier{
  int selectedIndex = 0;

  changeTab(index) {
    selectedIndex = index;
    notifyListeners();
  }

  int selectionIndex = 0;

changeColor(int index){
  selectionIndex = index;
 
  notifyListeners();
}

}