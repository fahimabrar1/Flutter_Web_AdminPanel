import 'package:flutter/material.dart';
import 'package:flutterweb/Components/Header.dart';
import 'package:flutterweb/Components/Mycolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

List<ChartSeries> getDefaultData() {
  final List<SalesData> chartData = [
    SalesData(2010, 35),
    SalesData(2011, 28),
    SalesData(2012, 34),
    SalesData(2013, 32),
    SalesData(2014, 40)
  ];
  final List<SalesData> chartData1 = [
    SalesData(2010, 5),
    SalesData(2011, 15),
    SalesData(2012, 12),
    SalesData(2013, 50),
    SalesData(2014, 22)
  ];
  final List<SalesData> chartData2 = [
    SalesData(2010, 13),
    SalesData(2011, 50),
    SalesData(2012, 40),
    SalesData(2013, 35),
    SalesData(2014, 30)
  ];
  return <ChartSeries>[
    // Renders line chart
    LineSeries<SalesData, num>(
        color: Colors.blue,
        isVisible: true,
        dataSource: chartData,
        width: 1,
        enableTooltip: true,
        markerSettings: MarkerSettings(
            isVisible: true, color: Colors.blue, shape: DataMarkerType.circle),
        dataLabelSettings: DataLabelSettings(showCumulativeValues: true),
        xValueMapper: (SalesData sales, _) => sales.year,
        yValueMapper: (SalesData sales, _) => sales.sales),
    LineSeries<SalesData, num>(
        color: Colors.red,
        isVisible: true,
        dataSource: chartData1,
        width: 1,
        enableTooltip: true,
        markerSettings: MarkerSettings(
            isVisible: true, color: Colors.red, shape: DataMarkerType.circle),
        dataLabelSettings: DataLabelSettings(showCumulativeValues: true),
        xValueMapper: (SalesData sales, _) => sales.year,
        yValueMapper: (SalesData sales, _) => sales.sales),
    LineSeries<SalesData, num>(
        color: Colors.orange,
        isVisible: true,
        dataSource: chartData2,
        width: 1,
        enableTooltip: true,
        markerSettings: MarkerSettings(
            isVisible: true,
            color: Colors.orange,
            shape: DataMarkerType.circle),
        dataLabelSettings: DataLabelSettings(showCumulativeValues: true),
        xValueMapper: (SalesData sales, _) => sales.year,
        yValueMapper: (SalesData sales, _) => sales.sales),
  ];
}

class SalesData {
  SalesData(this.year, this.sales);
  var year;
  var sales;
}

class AnalyticsScreen extends StatelessWidget {
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
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 3,
                        child: Card(
                          color: MyColor.White,
                          margin: EdgeInsets.all(10),
                          child: Theme(
                            data: Theme.of(context)
                                .copyWith(dividerColor: Colors.black),
                            child: DataTable(
                              horizontalMargin: 30,
                              dataTextStyle:
                                  TextStyle(color: MyColor.BlackFont),
                              headingTextStyle:
                                  TextStyle(color: MyColor.BlackFont),
                              dividerThickness: 1,
                              columns: const <DataColumn>[
                                DataColumn(
                                    label: Text(
                                  "Sl.",
                                )),
                                DataColumn(
                                    label: Text(
                                  "Name",
                                )),
                                DataColumn(
                                    label: Text(
                                  "Date",
                                )),
                                DataColumn(
                                    label: Text(
                                  "Other",
                                )),
                              ],
                              rows: const <DataRow>[
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text(
                                      '19',
                                    )),
                                    DataCell(Text(
                                      'Sarah',
                                    )),
                                    DataCell(Text(
                                      'Student',
                                    )),
                                    DataCell(Text(
                                      'Student',
                                    )),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text(
                                      '43',
                                    )),
                                    DataCell(Text(
                                      'Janine',
                                    )),
                                    DataCell(Text(
                                      'Professor',
                                    )),
                                    DataCell(Text(
                                      'Professor',
                                    )),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text(
                                      '27',
                                    )),
                                    DataCell(Text(
                                      'William',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text(
                                      '27',
                                    )),
                                    DataCell(Text(
                                      'William',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text(
                                      '27',
                                    )),
                                    DataCell(Text(
                                      'William',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text(
                                      '27',
                                    )),
                                    DataCell(Text(
                                      'William',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text(
                                      '27',
                                    )),
                                    DataCell(Text(
                                      'William',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text(
                                      '27',
                                    )),
                                    DataCell(Text(
                                      'William',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text(
                                      '27',
                                    )),
                                    DataCell(Text(
                                      'William',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text(
                                      '27',
                                    )),
                                    DataCell(Text(
                                      'William',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text(
                                      '27',
                                    )),
                                    DataCell(Text(
                                      'William',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text(
                                      '27',
                                    )),
                                    DataCell(Text(
                                      'William',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text(
                                      '27',
                                    )),
                                    DataCell(Text(
                                      'William',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                    DataCell(Text(
                                      'Associate Professor',
                                    )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
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

/**
 * 
 *   Storage Details Section
 *
 */

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

/**
 * 
 *   Quick Stats Holder Section
 *
 */

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
              child: Column(
                children: [
                  Row(children: [
                    QuickStats("\$400", "Net Profit", Icons.monetization_on,
                        Colors.green),
                    QuickStats("135", "Total Sales", Icons.tag, Colors.blue),
                    QuickStats(
                        "\243", "New Customers", Icons.person_add, Colors.red),
                    QuickStats("400", "Engagements",
                        Icons.connect_without_contact, Colors.yellow),
                  ]),
                  Card(
                    color: MyColor.White,
                    child: SfCartesianChart(
                      series: getDefaultData(),
                      plotAreaBorderWidth: .2,
                    ),
                  )
                ],
              ),
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
