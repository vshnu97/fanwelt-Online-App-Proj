import 'package:fanwelt/app/home/view/widgets/appbar.dart';
import 'package:fanwelt/app/home/viewmodel/bottom_nav_prov.dart';
import 'package:fanwelt/app/utitis/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenHome extends StatelessWidget {
 
  
   const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<NavigationControllerProv>(context);
    return Container(
      color: kWhitecolor,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 80.0),
            child: AppBarWidget(title: 'Fanwelt', profileAvatar: true,),
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
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: NavbarContainerWidget(
                        icon: Icons.home_outlined,
                        index: 0,
                      ),
                      label: "Home"),
                  BottomNavigationBarItem(
                      icon: NavbarContainerWidget(
                        icon: Icons.emoji_events_outlined,
                        index: 1,
                      ),
                      label: "My Rooms"),
                  BottomNavigationBarItem(
                      icon: NavbarContainerWidget(
                        icon: Icons.wallet_outlined,
                        index: 2,
                      ),
                      label: "Wallet"),
                  BottomNavigationBarItem(
                      icon: NavbarContainerWidget(
                        icon: Icons.more_horiz_outlined,
                        index: 3,
                      ),
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



class NavbarContainerWidget extends StatelessWidget {
  final IconData icon;
  final int index;
  const NavbarContainerWidget(
      {Key? key, required this.icon, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<NavigationControllerProv>(context);
    return Container(
        height: 60,
        width: 60,
        decoration: prov.selectedIndex == index
            ? BoxDecoration(
                gradient:deffAppgradient ,
                borderRadius: BorderRadius.circular(30))
            : BoxDecoration(
                color: offWhiteColor,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: appBaseColor)),
        child: Icon(icon,
            color: prov.selectedIndex == index ? kWhitecolor : kBlackColor));
  }
}
