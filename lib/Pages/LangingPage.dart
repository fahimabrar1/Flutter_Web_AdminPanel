import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/Components/Mycolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  color: MyColor.DarkIndigo,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: DrawerHeader(
                          child: Container(
                            height: 50,
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "General",
                                  style: GoogleFonts.robotoCondensed(
                                    textStyle: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                ListTile(
                                  leading: Icon(
                                    Icons.dashboard,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  title: Text('Dashboard',
                                      style: GoogleFonts.robotoCondensed(
                                        textStyle: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      )),
                                ),
                                ListTile(
                                  leading: Icon(
                                    Icons.analytics,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  title: Text('Analytics',
                                      style: GoogleFonts.robotoCondensed(
                                        textStyle: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      )),
                                ),
                                ExpansionTile(
                                  leading: Icon(Icons.list),
                                  title: Text('Posts',
                                      style: GoogleFonts.robotoCondensed(
                                        textStyle: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      )),
                                  collapsedIconColor: Colors.white,
                                  backgroundColor: MyColor.LightIndigo,
                                  children: <Widget>[
                                    ListTile(
                                        leading: Icon(
                                          Icons.pages,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                        title: Text(
                                          'All Posts',
                                          style: GoogleFonts.robotoCondensed(
                                            textStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        )),
                                    ListTile(
                                        leading: Icon(
                                          Icons.post_add_sharp,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                        title: Text('Add Post',
                                            style: GoogleFonts.robotoCondensed(
                                              textStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14),
                                            ))),
                                    ListTile(
                                        leading: Icon(
                                          Icons.category,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                        title: Text('Categories',
                                            style: GoogleFonts.robotoCondensed(
                                              textStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14),
                                            ))),
                                    ListTile(
                                        leading: Icon(
                                          Icons.tag,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                        title: Text('Tags',
                                            style: GoogleFonts.robotoCondensed(
                                              textStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14),
                                            ))),
                                  ],
                                ),
                                ListTile(),
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Management",
                                      style: GoogleFonts.robotoCondensed(
                                        textStyle: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                    ),
                                  ),
                                ),
                                ListTile(
                                    leading: Icon(
                                      Icons.production_quantity_limits,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    title: Text('Products',
                                        style: GoogleFonts.robotoCondensed(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ))),
                                ListTile(
                                    leading: Icon(
                                      Icons.list_alt,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    title: Text('Orders',
                                        style: GoogleFonts.robotoCondensed(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ))),
                                ListTile(
                                    leading: Icon(
                                      Icons.inventory_outlined,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    title: Text('WooCommerce',
                                        style: GoogleFonts.robotoCondensed(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ))),
                                ListTile(),
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Others",
                                      style: GoogleFonts.robotoCondensed(
                                        textStyle: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                    ),
                                  ),
                                ),
                                ListTile(
                                    leading: Icon(
                                      Icons.settings,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    title: Text('Setting',
                                        style: GoogleFonts.robotoCondensed(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ))),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 5,
                child: Container(
                  color: Colors.white,
                  child: Column(children: [
                    //Initialize the chart widget
                    SfCartesianChart(
                        primaryXAxis: CategoryAxis(),
                        // Chart title
                        title: ChartTitle(text: 'Half yearly sales analysis'),
                        // Enable tooltip
                        tooltipBehavior: TooltipBehavior(enable: true),
                        series: <ChartSeries<_SalesData, String>>[
                          LineSeries<_SalesData, String>(
                              dataSource: data,
                              xValueMapper: (_SalesData sales, _) => sales.year,
                              yValueMapper: (_SalesData sales, _) =>
                                  sales.sales,
                              name: 'Sales',
                              // Enable data label
                              dataLabelSettings:
                                  DataLabelSettings(isVisible: true))
                        ]),
                  ]),
                ))
          ],
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
