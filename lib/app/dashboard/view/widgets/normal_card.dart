import 'package:fanwelt/app/utitis/colors/colors.dart';
import 'package:fanwelt/app/utitis/sizedbox/sizedbox.dart';
import 'package:fanwelt/app/utitis/text_style/text_style.dart';
import 'package:flutter/material.dart';

class CardWidgetWhite extends StatelessWidget {
  const CardWidgetWhite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: appBaseColor, width: 1.5),
        color: offWhiteColor,
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
                  style: wTextStyleBlack,
                ),
                Icon(Icons.notifications_none_outlined)
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
                      style: wTextSubStyleBlack,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/cicketLogo4.png',
                          height: 45,
                        ),
                        kwidth10,
                        const Text(
                          'GT',
                          style: wTextStyleBlack,
                        )
                      ],
                    )
                  ],
                ),
                const Text(
                  '3h 15 min',
                  style: TextStyle(
                      color: kBlackColor, fontWeight: FontWeight.w600),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Kolkata Riders',
                      style: wTextSubStyleBlack,
                    ),
                    Row(
                      children: [
                        const Text(
                          'KKR',
                          style: wTextStyleBlack,
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
          ],
        ),
      ),
    );
  }
}