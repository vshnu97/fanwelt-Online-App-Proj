import 'package:fanwelt/app/utitis/colors/colors.dart';
import 'package:fanwelt/app/utitis/sizedbox/sizedbox.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhitecolor,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(55),
            child: Container(
              height: 60,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Color(0xfff0963a),
                    Color(0xfffcc46c),
                    Color(0xfff0963a)
                  ])),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/avatar.jpg'),
                    ),
                    const Text(
                      'Fanwelt',
                      style: TextStyle(
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
            ),
          ),
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black26, blurRadius: 15.0, spreadRadius: 1)
              ],
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xff16273e),
                                  Color(0xff234090),
                                  Color(0xff314f9f),
                                  Color(0xff223973),
                                  Color(0xff16273e),
                                ]),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Icon(
                          Icons.home,
                          color: kWhitecolor,
                        )),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xff16273e),
                                  Color(0xff234090),
                                  Color(0xff314f9f),
                                  Color(0xff223973),
                                  Color(0xff16273e),
                                ]),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Icon(
                          Icons.emoji_events,
                          color: kWhitecolor,
                        )),
                    label: "My Rooms"),
                BottomNavigationBarItem(
                    icon: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xff16273e),
                                  Color(0xff234090),
                                  Color(0xff314f9f),
                                  Color(0xff223973),
                                  Color(0xff16273e),
                                ]),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Icon(
                          Icons.wallet,
                          color: kWhitecolor,
                        )),
                    label: "Wallet"),
                BottomNavigationBarItem(
                    icon: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xff16273e),
                                  Color(0xff234090),
                                  Color(0xff314f9f),
                                  Color(0xff223973),
                                  Color(0xff16273e),
                                ]),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Icon(
                          Icons.more_horiz,
                          color: kWhitecolor,
                        )),
                    label: "More"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
