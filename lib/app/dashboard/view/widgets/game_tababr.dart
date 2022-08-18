import 'package:fanwelt/app/dashboard/view/screen_dashboard.dart';
import 'package:fanwelt/app/utitis/sizedbox/sizedbox.dart';
import 'package:flutter/material.dart';

class GameTabBar extends StatelessWidget {
  const GameTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          DashGameTab(
            name: 'Cricket',
            image: 'assets/cricketBall.png',
            index: 0,
          ),
          kwidth20,
          DashGameTab(
            name: 'Football',
            image: 'assets/football.png',
            index: 1,
          )
        ],
      ),
    );
  }
}
