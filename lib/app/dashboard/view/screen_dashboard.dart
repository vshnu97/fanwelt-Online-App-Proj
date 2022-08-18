
import 'package:fanwelt/app/dashboard/view/widgets/carousel_widget.dart';
import 'package:fanwelt/app/dashboard/view/widgets/game_tababr.dart';
import 'package:fanwelt/app/dashboard/view/widgets/normal_card.dart';
import 'package:fanwelt/app/dashboard/view/widgets/tournament_card.dart';
import 'package:fanwelt/app/dashboard/viewmodel/dashboard_prov.dart';
import 'package:fanwelt/app/routes/routes.dart';
import 'package:fanwelt/app/tournaments/view/screen_tournaments.dart';
import 'package:fanwelt/app/upcoming_matches/view/screen_upcoming.dart';
import 'package:fanwelt/app/utitis/colors/colors.dart';
import 'package:fanwelt/app/utitis/sizedbox/sizedbox.dart';
import 'package:fanwelt/app/utitis/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenDashboard extends StatelessWidget {
  
   const ScreenDashboard({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const GameTabBar(),
            Consumer<DashboardProv>(
              builder: (context, value, child) => Expanded(
                child: value.selectedIndex == 0
                    ? ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                          kheight,
                           const SectionRow(
                            title: ('My Rooms'), screen: ScreenUpcomingMateches(), 
                          ),
                          kheight15,
                          CarouselWidget(cardList: value.cardList),
                          kheight15,
                           const SectionRow(
                            title: ('Upcomimg Matches'), screen:  ScreenUpcomingMateches(),
                          ),
                          kheight15,
                          const CardWidgetWhite(),
                          kheight15,
                           const SectionRow(
                            title: ('Tournaments'), screen:  ScreenTournments(),
                          ),
                          kheight15,
                          const TournamentCardWidget()
                        ],
                      )
                    : ListView(
                        children: const [Text('football details')],
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



class SectionRow extends StatelessWidget {

  final String title;
  final Widget screen;
   const SectionRow({Key? key, required this.title,required this.screen}) : super(key: key);

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
            InkWell(
              onTap: (){

            RoutesScreen().pushScreen(context, screen);

              },
              child: Text(
                'View All',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.5,
                    fontSize: 17,
                    color: kBlackColor.withOpacity(.8)),
              ),
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
  final String name;
  final String image;
  final int index;
  const DashGameTab(
      {Key? key, required this.image, required this.index, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardProv>(
      builder: (context, value, child) => InkWell(
        onTap: () {
          value.changeTab(index);
        },
        child: Container(
          height: 50,
          decoration: value.selectedIndex == index
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: deffAppgradient,
                  border: Border.all(color: appBaseColor))
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: offWhiteColor,
                  border: Border.all(color: appBaseColor)),
          child: Padding(
            padding: value.selectedIndex == index
                ? const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 15,
                  )
                : const EdgeInsets.symmetric(horizontal: 0, vertical: 6),
            child: Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                Image.asset(
                  image,
                  height: 45,
                ),
                kwidth10,
                Text(
                  value.selectedIndex == index ? name : '',
                  style: wTextStyle,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
