import 'package:flutter/material.dart';
import 'package:flutterweb/Components/Header.dart';
import 'package:flutterweb/Components/Mycolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashboardScreen extends StatelessWidget {
  final List<DoughnutData> chart = [
    DoughnutData("A", 5, "aa", "5"),
    DoughnutData("B", 10, "bb", "10"),
    DoughnutData("C", 15, "c", "15"),
    DoughnutData("D", 20, "dd", "20"),
    DoughnutData("E", 50, "ee", "50")
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Expanded(
          child: Container(
            width: double.infinity,
            color: MyColor.White80,
            child: Column(
              children: [
                Header(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    QuickStatsHolder(),
                    StoreDetailsHolder(chart: chart),
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

class StoreDetailsHolder extends StatelessWidget {
  const StoreDetailsHolder({
    Key? key,
    required this.chart,
  }) : super(key: key);

  final List<DoughnutData> chart;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
      height: 500,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: Card(
          color: MyColor.White,
          elevation: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 10),
                child: Text("Storage Details",
                    style: GoogleFonts.robotoCondensed(
                        textStyle: TextStyle(
                            color: MyColor.BlackFont,
                            fontSize: 22,
                            fontWeight: FontWeight.w500))),
              ),
              SizedBox(
                height: 200,
                child: SfCircularChart(
                  series: [
                    DoughnutSeries<DoughnutData, String>(
                      dataSource: chart,
                      xValueMapper: (DoughnutData data, _) => data.xData,
                      yValueMapper: (DoughnutData data, _) => data.yData,
                      dataLabelMapper: (DoughnutData data, _) => data.text,
                      dataLabelSettings: DataLabelSettings(
                          isVisible: true, showCumulativeValues: true),
                      enableTooltip: true,
                      enableSmartLabels: true,
                    )
                  ],
                ),
              ),
              StoreDetailsPanel(),
              StoreDetailsPanel(),
              StoreDetailsPanel(),
              StoreDetailsPanel(),
            ],
          ),
        ),
      ),
    ));
  }
}

class StoreDetailsPanel extends StatelessWidget {
  const StoreDetailsPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: MyColor.BlackFont.withOpacity(0.1)),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 20,
          ),
          SizedBox(
              height: 30,
              width: 30,
              child: Icon(Icons.document_scanner, color: MyColor.BlackFont)),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Text("Documents",
                  maxLines: 1,
                  style: GoogleFonts.robotoCondensed(
                    textStyle: TextStyle(
                        color: MyColor.BlackFont,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )))
        ],
      ),
    );
  }
}

class QuickStatsHolder extends StatelessWidget {
  const QuickStatsHolder({
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
                QuickStats(
                    "\$400", "Net Profit", Icons.monetization_on, Colors.green),
                QuickStats("135", "Total Sales", Icons.tag, Colors.blue),
                QuickStats(
                    "\243", "New Customers", Icons.person_add, Colors.red),
                QuickStats("400", "Engagements", Icons.connect_without_contact,
                    Colors.yellow),
              ]),
            ),
          ],
        )));
  }
}

class QuickStats extends StatelessWidget {
  const QuickStats(
    String this.amount,
    String this.title,
    IconData this.icon,
    MaterialColor this.col, {
    Key? key,
  }) : super(key: key);
  final String amount;
  final String title;
  final IconData icon;
  final MaterialColor col;

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
                            amount,
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
                            title,
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
                      icon,
                      color: col,
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

class DoughnutData {
  DoughnutData(this.xData, this.yData, this.text, this.radius);
  final String xData;
  final num yData;
  final String text;
  final String radius;
}
