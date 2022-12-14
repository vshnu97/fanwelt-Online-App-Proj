import 'package:fanwelt/app/utitis/colors/colors.dart';

import 'package:fanwelt/app/utitis/text_style/text_style.dart';
import 'package:flutter/material.dart';

class TournamentCardWidget extends StatelessWidget {
  const TournamentCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: appBaseColor, width: 1.5),
        color: offWhiteColor,
      ),
      child: ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/cricker1.png'),
            backgroundColor: kGreyColor,
          ),
          title: const Text(
            'Indian Primier League',
            style: wTextSubStyleBlack,
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
    );
  }
}
