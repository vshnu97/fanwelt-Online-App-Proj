import 'package:fanwelt/app/dashboard/view/screen_dashboard.dart';
import 'package:fanwelt/app/more/view/screen_more.dart';
import 'package:fanwelt/app/my_rooms/view/screen_myroom.dart';
import 'package:fanwelt/app/wallet/view/screen_walet.dart';
import 'package:flutter/cupertino.dart';

class NavigationControllerProv extends ChangeNotifier {
  int selectedIndex = 0;

  final navItems = [
     ScreenDashboard(),
    const ScreenMyRooms(),
    const ScreenWallet(),
    const ScreenMore(),
  ];

  onSelected(index) {
    selectedIndex = index;

    notifyListeners();
  }
}
