import 'package:flutter/material.dart';
import 'package:flutterweb/Components/Mycolor.dart';
import 'Screen/Langing_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: MyColor.White,
      ),
      home: LandingPage(title: 'Flutter Demo Home Page'),
    );
  }
}
