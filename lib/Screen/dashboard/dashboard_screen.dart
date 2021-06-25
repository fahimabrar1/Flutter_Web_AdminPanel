import 'package:flutter/material.dart';
import 'package:flutterweb/Components/Header.dart';
import 'package:flutterweb/Components/Mycolor.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Expanded(
          child: Container(
            width: double.infinity,
            color: MyColor.White80,
            child: Column(children: [
              Header(),
              Center(
                child: Text(
                  "Dashboard",
                  style: TextStyle(color: MyColor.BlackFont),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
