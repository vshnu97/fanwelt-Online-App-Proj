import 'package:fanwelt/app/tournaments/view/widget/sub_card.dart';
import 'package:fanwelt/app/tournaments/viewmodel/sub_card_prov.dart';
import 'package:fanwelt/app/upcoming_matches/view/widgets/appbar_pages.dart';
import 'package:fanwelt/app/utitis/colors/colors.dart';
import 'package:fanwelt/app/utitis/sizedbox/sizedbox.dart';
import 'package:fanwelt/app/utitis/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenSubTournament extends StatelessWidget {
  const ScreenSubTournament({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 80.0),
            child: const PageAppbar(title: 'Tournaments')),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15, left: 15, right: 15,bottom: 15),
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: deffAppgradient,
                border: Border.all(color: appBaseColor, width: 1.5),
                color: offWhiteColor,
              ),
              child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/ipl.png'),
                  ),
                  title: Text('Indian Primier League', style: wTextSubStyle),
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
            Container(
              child: Expanded(
                child: ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Consumer<SubCardProv>(
                      builder: (context, value, child) => ListView.separated(
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
                                child:
                                    tournamentSubCard(value.selectionIndex == index2,index2));
                          }),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
