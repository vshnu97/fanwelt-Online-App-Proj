import 'package:fanwelt/app/tournaments/view/widget/appbar.dart';
import 'package:fanwelt/app/tournaments/view/widget/tournament_tile.dart';
import 'package:fanwelt/app/tournaments/viewmodel/tournaments_pro.dart';
import 'package:fanwelt/app/upcoming_matches/view/widgets/appbar_pages.dart';
import 'package:fanwelt/app/utitis/colors/colors.dart';
import 'package:fanwelt/app/utitis/sizedbox/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenTournments extends StatelessWidget {
  const ScreenTournments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhitecolor,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width, 80.0),
              child: const PageAppbar(title: 'Tournaments')),
          body: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    DashGameTabTournament(
                      name: 'Cricket',
                      image: 'assets/cricketBall.png',
                      index: 0,
                    ),
                    kwidth20,
                    DashGameTabTournament(
                      name: 'Football',
                      image: 'assets/football.png',
                      index: 1,
                    )
                  ],
                ),
              ),
              kheight30,
              Consumer<TournamentProv>(
                builder: (context, value, child) => Expanded(
                  child: value.selectedIndex == 0
                      ? const CardTournament()
                      : ListView(
                          children: const [Text('football details')],
                        ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
