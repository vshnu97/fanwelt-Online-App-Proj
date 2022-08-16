import 'package:fanwelt/app/utitis/colors/colors.dart';
import 'package:fanwelt/app/utitis/sizedbox/sizedbox.dart';
import 'package:fanwelt/app/utitis/text_style/text_style.dart';
import 'package:flutter/material.dart';

class MainCardWidgetGradient extends StatelessWidget {
  const MainCardWidgetGradient({
    Key? key,
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
        padding:
            const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
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
                      'Mumbai  Indians',
                      style: wTextSubStyle,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/cricketLogo1.png',
                          height: 45,
                        ),
                        kwidth10,
                        const Text(
                          'MI',
                          style: wTextStyle,
                        )
                      ],
                    )
                  ],
                ),
                const Text(
                  '3h',
                  style: TextStyle(color: kWhitecolor),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Mumbai  Indians',
                      style: wTextSubStyle,
                    ),
                    Row(
                      children: [
                        const Text(
                          'CSK',
                          style: wTextStyle,
                        ),
                        kwidth10,
                        Image.asset(
                          'assets/cricketLogo2.png',
                          height: 45,
                        ),
                      ],
                    )
                  ],
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
                      '  ₹8L',
                      style: wTextSubStyle,
                    )
                  ],
                ),
                Image.asset(
                  'assets/Flag.webp',
                  height: 18,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}