import 'package:fanwelt/app/dashboard/view/widgets/gradient_card.dart';
import 'package:fanwelt/app/dashboard/view/widgets/normal_card.dart';
import 'package:fanwelt/app/dashboard/view/widgets/tournament_card.dart';
import 'package:fanwelt/app/utitis/colors/colors.dart';
import 'package:fanwelt/app/utitis/sizedbox/sizedbox.dart';
import 'package:fanwelt/app/utitis/text_style/text_style.dart';
import 'package:flutter/material.dart';

class ScreenDashboard extends StatelessWidget {
  const ScreenDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  DashGameTab(
                    image: 'assets/cricketBall.png',
                  ),
                  kwidth20,
                  DashGameTab(
                    image: 'assets/football.png',
                  )
                ],
              ),
            ),
            kheight20,
            const SectionRow(
              title: ('My Rooms'),
            ),
            kheight15,
            const MainCardWidgetGradient(),
            kheight20,
            const SectionRow(
              title: ('Upcomimg Matches'),
            ),
            kheight15,
            const CardWidgetWhite(),
            kheight15,
            const SectionRow(
              title: ('Tournaments'),
            ),
            kheight15,
            const TournamentCardWidget()
          ],
        ),
      ),
    );
  }
}



class SectionRow extends StatelessWidget {
  final String title;
  const SectionRow({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: const TextStyle(
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
                fontSize: 20,
                color: kBlackColor)),
        Row(
          children: [
            Text(
              'View All',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.5,
                  fontSize: 17,
                  color: kBlackColor.withOpacity(.8)),
            ),
            kwidth10,
            const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            )
          ],
        )
      ],
    );
  }
}

class DashGameTab extends StatelessWidget {
  final String image;
  const DashGameTab({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          color: offWhiteColor,
          border: Border.all(color: appBaseColor)),
      child: Center(
        child: Image.asset(image),
      ),
    );
  }
}
