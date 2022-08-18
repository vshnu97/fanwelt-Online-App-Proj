import 'package:fanwelt/app/dashboard/view/widgets/game_tababr.dart';
import 'package:fanwelt/app/dashboard/viewmodel/dashboard_prov.dart';
import 'package:fanwelt/app/upcoming_matches/view/widgets/appbar_pages.dart';
import 'package:fanwelt/app/upcoming_matches/view/widgets/match_card.dart';
import 'package:fanwelt/app/upcoming_matches/viewmodel/upcoming_prov.dart';
import 'package:fanwelt/app/utitis/colors/colors.dart';
import 'package:fanwelt/app/utitis/sizedbox/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenUpcomingMateches extends StatefulWidget {
  const ScreenUpcomingMateches({Key? key}) : super(key: key);

  @override
  State<ScreenUpcomingMateches> createState() => _ScreenUpcomingMatechesState();
}

class _ScreenUpcomingMatechesState extends State<ScreenUpcomingMateches> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhitecolor,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 80.0),
            child:PageAppbar(title: 'Upcoming Matches')
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const GameTabBar(),
                kheight30,
                Consumer<DashboardProv>(
                  builder: (context, value, child) => Expanded(
                    child: value.selectedIndex == 0
                        ? Consumer<UpcomingMatchesProv>(
                            builder: (context, value, child) =>
                                ListView.separated(
                                    separatorBuilder: (context, index) {
                                      return kheight15;
                                    },
                                    physics: const BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 10,
                                    itemBuilder: (context, index2) {
                                      return InkWell(
                                          onTap: () {
                                            value.changeColor(index2);
                                          },
                                          child: matchCardWidget(
                                              value.selectionIndex == index2));
                                    }),
                          )
                        : ListView(
                            children: const [Text('football details')],
                          ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
