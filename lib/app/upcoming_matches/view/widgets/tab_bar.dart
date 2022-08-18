import 'package:fanwelt/app/upcoming_matches/viewmodel/upcoming_prov.dart';
import 'package:fanwelt/app/utitis/colors/colors.dart';
import 'package:fanwelt/app/utitis/sizedbox/sizedbox.dart';
import 'package:fanwelt/app/utitis/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashGameTabUpcoming extends StatelessWidget {
  final String name;
  final String image;
  final int index;
  const DashGameTabUpcoming(
      {Key? key, required this.image, required this.index, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<UpcomingMatchesProv>(
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