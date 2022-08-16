import 'package:fanwelt/app/utitis/colors/colors.dart';
import 'package:fanwelt/app/utitis/sizedbox/sizedbox.dart';
import 'package:fanwelt/app/utitis/text_style/text_style.dart';
import 'package:flutter/material.dart';

class TournamentCardWidget extends StatelessWidget {
  const TournamentCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: appBaseColor, width: 1.5),
        color: offWhiteColor,
      ),
      child: Row(
        children: [
          kwidth10,
          const CircleAvatar(
            backgroundImage: AssetImage('assets/cricker1.png'),
            backgroundColor: kGreyColor,
          ),
          kwidth20,
         
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
            children:  const [
              Text(
                'Indian Primier League',
                style: wTextSubStyleBlack,
              ),
              Text('54 matches',style: wTextSubStyleGrey,)
            ],
          ),
         
        ],
      ),
    );
  }
}