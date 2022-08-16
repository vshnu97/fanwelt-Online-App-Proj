import 'package:fanwelt/app/home/viewmodel/bottom_nav_prov.dart';
import 'package:fanwelt/app/utitis/colors/colors.dart';
import 'package:fanwelt/app/utitis/sizedbox/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prov =Provider.of<NavigationControllerProv>(context);
    return Container(
      color: kWhitecolor,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 80.0),
            child: Container(
              height: 60,
              decoration: const BoxDecoration(gradient: appbarGradeint),
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
          body: prov.navItems[prov.selectedIndex],
          bottomNavigationBar: Consumer<NavigationControllerProv>(
            builder: (context, value, child) => Container(
              decoration: const BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Color.fromARGB(255, 150, 163, 199),
                      blurRadius: 20.0,
                      spreadRadius: 1)
                ],
              ),
              child: BottomNavigationBar(
                unselectedLabelStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    fontSize: 13.5),
                selectedLabelStyle: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: kBlackColor),
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
                currentIndex: value.selectedIndex,
                onTap: (index) {
                  value.onSelected(index);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
