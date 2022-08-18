import 'package:fanwelt/app/dashboard/view/widgets/gradient_card.dart';
import 'package:flutter/cupertino.dart';

class DashboardProv extends ChangeNotifier {
  int selectedIndex = 0;

  changeTab(index) {
    selectedIndex = index;
    notifyListeners();
  }

  int carouselIndex = 0;
  carouselSlider(index) {
    carouselIndex = index;
    notifyListeners();
  }

  List cardList = [
    MainCardWidgetGradient(
        playTime: '3hr',
        teamLogo1: 'assets/cricketLogo1.png',
        teamName1: 'Mumbai  Indians',
        teamNickName1: 'MI',
        teamLogo2: 'assets/cricketLogo1.png',
        teamName2: 'Mumbai  Indians',
        teamNickName2: 'MI'),
         MainCardWidgetGradient(
        playTime: '3hr',
        teamLogo1: 'assets/cricketLogo1.png',
        teamName1: 'Mumbai  Indians',
        teamNickName1: 'MI',
        teamLogo2: 'assets/cricketLogo1.png',
        teamName2: 'Mumbai  Indians',
        teamNickName2: 'MI'),
         MainCardWidgetGradient(
        playTime: '3hr',
        teamLogo1: 'assets/cricketLogo1.png',
        teamName1: 'Mumbai  Indians',
        teamNickName1: 'MI',
        teamLogo2: 'assets/cricketLogo1.png',
        teamName2: 'Mumbai  Indians',
        teamNickName2: 'MI'),
         MainCardWidgetGradient(
        playTime: '3hr',
        teamLogo1: 'assets/cricketLogo1.png',
        teamName1: 'Mumbai  Indians',
        teamNickName1: 'MI',
        teamLogo2: 'assets/cricketLogo1.png',
        teamName2: 'Mumbai  Indians',
        teamNickName2: 'MI'),
  ];
}
