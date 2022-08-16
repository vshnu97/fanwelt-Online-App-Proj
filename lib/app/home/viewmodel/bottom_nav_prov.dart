import 'package:fanwelt/app/dashboard/view/screen_dashboard.dart';
import 'package:fanwelt/app/more/view/screen_more.dart';
import 'package:fanwelt/app/my_rooms/view/screen_myroom.dart';
import 'package:fanwelt/app/wallet/view/screen_walet.dart';
import 'package:flutter/cupertino.dart';

class NavigationControllerProv extends ChangeNotifier {
//   NavigationControllerProv(){
//     changePageNav()
// ;  }
  int selectedIndex = 0;

  // var navItems = <Widget>[];
  final navItems = [
    const ScreenDashboard(),
    const ScreenMyRooms(),
    const ScreenWallet(),
    const ScreenMore(),
  ];

  // changePageNav() {

  //   notifyListeners();
  // }

  onSelected(index) {
    selectedIndex = index;

    print(selectedIndex);
    notifyListeners();
  }
}
