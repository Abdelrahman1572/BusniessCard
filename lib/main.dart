import 'package:app/modules/businesscard/busniesscard.dart';
import 'package:app/shared/styles/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BusniessCard',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: BusniessCard(),
    );
  }
}


