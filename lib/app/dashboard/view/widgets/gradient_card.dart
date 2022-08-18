import 'package:fanwelt/app/utitis/colors/colors.dart';
import 'package:fanwelt/app/utitis/sizedbox/sizedbox.dart';
import 'package:fanwelt/app/utitis/text_style/text_style.dart';
import 'package:flutter/material.dart';

class MainCardWidgetGradient extends StatelessWidget {
  String teamName1;
  String teamLogo1;
  String teamNickName1;
  String playTime;
  String teamName2;
  String teamLogo2;
  String teamNickName2;
  bool flagLogo;

  MainCardWidgetGradient({
    Key? key,
    required this.flagLogo,
    required this.playTime,
    required this.teamLogo1,
    required this.teamName1,
    required this.teamNickName1,
    required this.teamLogo2,
    required this.teamName2,
    required this.teamNickName2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: deffAppgradient,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'OPPO IPL',
                  style: wTextStyle,
                ),
                Text(
                  'Public',
                  style: wTextStyle,
                )
              ],
            ),
            const Divider(
              height: 4,
              color: kWhitecolor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      teamName1,
                      style: wTextSubStyle,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          teamLogo1,
                          height: 45,
                        ),
                        kwidth10,
                        Text(
                          teamNickName1,
                          style: wTextStyle,
                        )
                      ],
                    )
                  ],
                ),
                Text(
                  playTime,
                  style: const TextStyle(color: kWhitecolor),
                ),
                FittedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        teamName2,
                        style: wTextSubStyle,
                      ),
                      Row(
                        children: [
                          Text(
                            teamNickName2,
                            style: wTextStyle,
                          ),
                          kwidth10,
                          Image.asset(
                            teamLogo2,
                            height: 45,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 1),
                        decoration: BoxDecoration(
                            color: kWhitecolor.withOpacity(.2),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Text(
                          'WINNING PRICE',
                          style: TextStyle(
                              color: kWhitecolor,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              letterSpacing: .5),
                        )),
                    Text(
                      '  ₹8Cr',
                      style: wTextSubStyle,
                    )
                  ],
                ),
                Visibility(
                  visible: flagLogo,
                  child: Image.asset(
                    'assets/Flag.webp',
                    height: 18,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
