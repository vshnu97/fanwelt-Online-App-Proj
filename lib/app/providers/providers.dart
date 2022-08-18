import 'package:fanwelt/app/dashboard/viewmodel/dashboard_prov.dart';
import 'package:fanwelt/app/home/viewmodel/bottom_nav_prov.dart';
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
      ],
      child: const MyApp(),
    );
  }
}
