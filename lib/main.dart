import 'package:fanwelt/app/home/view/home.dart';
import 'package:fanwelt/app/providers/providers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Providers.providers());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenHome(),
    );
  }
}
