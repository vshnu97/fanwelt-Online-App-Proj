import 'package:fanwelt/app/routes/routes.dart';
import 'package:fanwelt/app/tournaments/view/screen_sub.dart';
import 'package:fanwelt/app/tournaments/viewmodel/tournaments_pro.dart';
import 'package:fanwelt/app/utitis/colors/colors.dart';
import 'package:fanwelt/app/utitis/sizedbox/sizedbox.dart';
import 'package:fanwelt/app/utitis/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardTournament extends StatelessWidget {
  const CardTournament({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TournamentProv>(
      builder: (context, value, child) => ListView.separated(
          itemBuilder: ((context, index1) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(
                onTap: () {
                  value.changeColor(index1);
                  RoutesScreen().pushScreen(context, const ScreenSubTournament());
                },
                child: Container(
                  height: 70,
                  decoration: value.selectionIndex == index1
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: deffAppgradient,
                          border: Border.all(color: appBaseColor, width: 1.5),
                          color: offWhiteColor,
                        )
                      : BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: appBaseColor, width: 1.5),
                          color: offWhiteColor,
                        ),
                  child: ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/ipl.png'),
                      ),
                      title: Text(
                        'Indian Primier League',
                        style: value.selectionIndex == index1
                            ? wTextSubStyle
                            : wTextSubStyleBlack,
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '54 matches',
                            style: wTextSubStyleGrey,
                          ),
                          Text(
                            'T-20',
                            style: wTextSubStyleGrey,
                          )
                        ],
                      )),
                ),
              ),
            );
          }),
          separatorBuilder: (context, index) {
            return kheight15;
          },
          itemCount: 3),
    );
  }
}