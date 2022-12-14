import 'package:fanwelt/app/dashboard/viewmodel/dashboard_prov.dart';
import 'package:fanwelt/app/home/viewmodel/bottom_nav_prov.dart';
import 'package:fanwelt/app/tournaments/viewmodel/sub_card_prov.dart';
import 'package:fanwelt/app/tournaments/viewmodel/tournaments_pro.dart';
import 'package:fanwelt/app/upcoming_matches/viewmodel/upcoming_prov.dart';
import 'package:fanwelt/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Providers {
  static Widget providers() {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<NavigationControllerProv>(
            create: (context) => NavigationControllerProv()),
             ChangeNotifierProvider<DashboardProv>(
            create: (context) => DashboardProv()),
             ChangeNotifierProvider<UpcomingMatchesProv>(
            create: (context) => UpcomingMatchesProv()),
             ChangeNotifierProvider<TournamentProv>(
            create: (context) => TournamentProv()),
             ChangeNotifierProvider<SubCardProv>(
            create: (context) => SubCardProv()),
            //  ChangeNotifierProvider<DataFetch>(
            // create: (context) => DataFetch()),
      ],
      child: const MyApp(),
    );
  }
}
