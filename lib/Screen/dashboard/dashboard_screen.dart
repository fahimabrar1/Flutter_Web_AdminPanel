import 'package:flutter/material.dart';
import 'package:flutterweb/Components/Header.dart';
import 'package:flutterweb/Components/Mycolor.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Expanded(
          child: Container(
            width: double.infinity,
            color: MyColor.White79,
            child: Column(
              children: [
                Header(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    QuickStats(),
                    Expanded(
                        child: SizedBox(
                      height: 500,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Card(
                          color: MyColor.White,
                          elevation: 2,
                        ),
                      ),
                    )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class QuickStats extends StatelessWidget {
  const QuickStats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: SizedBox(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, bottom: 10),
              child: Row(
                children: [
                  Text(
                    "Quick Stats",
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
                      color: MyColor.BlackFont,
                      fontSize: 22,
                    )),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Row(children: [
                QuickStatPanel(),
                QuickStatPanel(),
                QuickStatPanel(),
                QuickStatPanel(),
              ]),
            ),
          ],
        )));
  }
}

class QuickStatPanel extends StatelessWidget {
  const QuickStatPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 150,
        child: Card(
          color: MyColor.White,
          elevation: 2,
          child: Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "\$400",
                            style: GoogleFonts.robotoCondensed(
                                textStyle: TextStyle(
                              color: MyColor.BlackFont,
                              fontSize: 22,
                            )),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "\$Net Profit",
                            style: GoogleFonts.robotoCondensed(
                                textStyle: TextStyle(
                              color: MyColor.BlackFont,
                              fontSize: 18,
                            )),
                          ),
                        ),
                      ),
                    ],
                  )),
              Expanded(
                  flex: 2,
                  child: Center(
                    child: Icon(
                      Icons.monetization_on_sharp,
                      color: Colors.green,
                      size: 36,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
