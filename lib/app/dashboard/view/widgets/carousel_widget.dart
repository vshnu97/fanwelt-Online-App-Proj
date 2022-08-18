import 'package:carousel_slider/carousel_slider.dart';
import 'package:fanwelt/app/dashboard/viewmodel/dashboard_prov.dart';
import 'package:fanwelt/app/utitis/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          Row(
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
                      ? appBaseColor
                      : const Color.fromARGB(102, 146, 180, 221),
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}