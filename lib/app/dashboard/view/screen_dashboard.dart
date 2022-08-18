
import 'package:fanwelt/app/dashboard/view/widgets/normal_card.dart';
import 'package:fanwelt/app/dashboard/view/widgets/tournament_card.dart';
import 'package:fanwelt/app/dashboard/viewmodel/dashboard_prov.dart';
import 'package:fanwelt/app/utitis/colors/colors.dart';
import 'package:fanwelt/app/utitis/sizedbox/sizedbox.dart';
import 'package:fanwelt/app/utitis/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ScreenDashboard extends StatelessWidget {
  const ScreenDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
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
            ),
            Consumer<DashboardProv>(
              builder: (context, value, child) => Expanded(
                child: value.selectedIndex == 0
                    ? ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                          kheight20,
                          const SectionRow(
                            title: ('My Rooms'),
                          ),
                          kheight15,
                          CarouselWidget(cardList: value.cardList),
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

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({
    Key? key,
    required this.cardList,
  }) : super(key: key);

  final List cardList;

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardProv>(
      builder: (context, value, child) => Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 150.0,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 700),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                value.carouselSlider(index);
              },
            ),
            items: cardList.map((card) {
              return Builder(builder: (BuildContext context) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    color: Colors.transparent,
                    child: card,
                  ),
                );
              });
            }).toList(),
          ),
          Positioned(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: cardList.map((url) {
                int index = cardList.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 4.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: value.carouselIndex == index
                        ? Colors.black
                        : const Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
          )
        ],
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
