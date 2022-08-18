import 'package:fanwelt/app/utitis/colors/colors.dart';
import 'package:fanwelt/app/utitis/sizedbox/sizedbox.dart';
import 'package:fanwelt/app/utitis/text_style/text_style.dart';
import 'package:flutter/material.dart';

Widget matchCardWidget(bool isSelected) {
  return Container(
    height: 140,
    decoration: isSelected
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
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'OPPO IPL',
                style: isSelected ? wTextStyle : wTextStyleBlack,
              ),
              Icon(
                Icons.notifications_none_outlined,
                color: isSelected ? kWhitecolor : kBlackColor,
              )
            ],
          ),
          const Divider(
            height: 4,
            color: kBlackColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gujarat Titans',
                    style: isSelected ? wTextSubStyle : wTextSubStyleBlack,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/cicketLogo4.png',
                        height: 45,
                      ),
                      kwidth10,
                      Text(
                        'GT',
                        style: isSelected ? wTextStyle : wTextStyleBlack,
                      )
                    ],
                  )
                ],
              ),
              Text(
                '3h 15 min',
                style: isSelected
                    ? const TextStyle(
                        color: kWhitecolor, fontWeight: FontWeight.w600)
                    : const TextStyle(
                        color: kBlackColor, fontWeight: FontWeight.w600),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Kolkata Riders',
                    style: isSelected ? wTextSubStyle : wTextSubStyleBlack,
                  ),
                  Row(
                    children: [
                      Text(
                        'KKR',
                        style: isSelected ? wTextStyle : wTextStyleBlack,
                      ),
                      kwidth10,
                      Image.asset(
                        'assets/cricketLogo3.png',
                        height: 45,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                  decoration: BoxDecoration(
                      color: isSelected
                          ? appBaseColor.withOpacity(.2)
                          : kWhitecolor.withOpacity(.2),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'WINNING PRICE',
                    style: isSelected
                        ? const TextStyle(
                            color: kWhitecolor,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            letterSpacing: .5)
                        : const TextStyle(
                            color: kBlackColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            letterSpacing: .5),
                  )),
              Text(
                '  ₹8Cr',
                style: isSelected ? wTextSubStyle : wTextSubStyleBlack,
              )
            ],
          ),
        ],
      ),
    ),
  );
}
