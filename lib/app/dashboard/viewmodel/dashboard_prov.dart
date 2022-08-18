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
        teamLogo2: 'assets/cricketLogo2.png',
        teamName2: 'Chennai Kings',
        teamNickName2: 'CSK', flagLogo: true,),
    MainCardWidgetGradient(
        playTime: '8hr 5m',
        teamLogo1: 'assets/cricketLogo3.png',
        teamName1: 'Kolkata Riders',
        teamNickName1: 'KKR',
        teamLogo2: 'assets/cicketLogo4.png',
        teamName2: 'Gujarat Titans',
        flagLogo: true,
        teamNickName2: 'GT'),
        
    MainCardWidgetGradient(
        playTime: '1D',
        teamLogo1: 'assets/cricketLogo1.png',
        teamName1: 'Mumbai  Indians',
        teamNickName1: 'MI',
        teamLogo2: 'assets/cicketLogo4.png',
        teamName2: 'Gujarat Titans',
         flagLogo: true,
        teamNickName2: 'GT'),
    MainCardWidgetGradient(
       playTime: '1D',
        teamLogo1: 'assets/cricketLogo3.png',
        teamName1: 'Kolkata Riders',
        teamNickName1: 'KKR',
         flagLogo: true,
        teamLogo2: 'assets/cricketLogo2.png',
        teamName2: 'Chennai Kings',
        teamNickName2: 'CSK'),
  ];
}
