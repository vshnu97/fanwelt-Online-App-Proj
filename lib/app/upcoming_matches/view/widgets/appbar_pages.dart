import 'package:fanwelt/app/routes/routes.dart';
import 'package:fanwelt/app/utitis/colors/colors.dart';
import 'package:fanwelt/app/utitis/sizedbox/sizedbox.dart';
import 'package:flutter/material.dart';

class PageAppbar extends StatelessWidget {
final  String title;


  const PageAppbar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(gradient: appbarGradeint),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  RoutesScreen().popScreen(context);
                },
                icon: const Icon(Icons.arrow_back_ios)),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 21,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w600,
                  color: appBaseColor),
            ),
            Row(
              children: const [
                Icon(
                  Icons.person,
                  color: appBaseColor,
                  size: 28,
                ),
                kwidth10,
                Icon(
                  Icons.message,
                  color: appBaseColor,
                  size: 28,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
