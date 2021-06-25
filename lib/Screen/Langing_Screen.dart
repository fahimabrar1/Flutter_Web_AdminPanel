import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/Components/Mycolor.dart';
import 'package:flutterweb/Components/side_menu.dart';
import 'package:flutterweb/Screen/dashboard/analytics_screen.dart';
import 'package:flutterweb/Screen/dashboard/dashboard_screen.dart';
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
  List<Widget> sidebarPages = [DashboardScreen(), AnalyticsScreen()];
  Widget screen = DashboardScreen();
  void setScreen(int index) {
    setState(() {
      screen = sidebarPages.elementAt(index);
    });
  }

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(flex: 1, child: SideMenu(sidebarPages)),
                ],
              ),
            ),
            Expanded(flex: 5, child: screen),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {Key? key, required this.title, required this.icon, required this.press})
      : super(key: key);

  final String title;
  final VoidCallback press;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
        size: 18,
      ),
      title: Text(title,
          style: GoogleFonts.robotoCondensed(
            textStyle: TextStyle(color: Colors.white, fontSize: 14),
          )),
      onTap: press,
    );
  }
}
