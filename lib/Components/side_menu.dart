import 'package:flutter/material.dart';
import 'package:flutterweb/Screen/Langing_Screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Mycolor.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Expanded(
                child: Image.asset("images/do_dev_logo.png"),
              ),
            ),
            DrawerListTile(
              title: 'Dashboard',
              icon: Icons.analytics,
              press: () {},
            ),
            DrawerListTile(
              title: 'Analytics',
              icon: Icons.dashboard,
              press: () {},
            ),
            ExpansionTile(
              leading: Icon(Icons.list),
              title: Text('Posts',
                  style: GoogleFonts.robotoCondensed(
                    textStyle: TextStyle(color: Colors.white, fontSize: 14),
                  )),
              collapsedIconColor: Colors.white,
              backgroundColor: MyColor.LightIndigo,
              children: <Widget>[
                DrawerListTile(
                  title: 'All Posts',
                  icon: Icons.pages,
                  press: () {},
                ),
                DrawerListTile(
                  title: 'Add Post',
                  icon: Icons.post_add_sharp,
                  press: () {},
                ),
                DrawerListTile(
                  title: 'Categories',
                  icon: Icons.category,
                  press: () {},
                ),
                DrawerListTile(
                  title: 'Tags',
                  icon: Icons.tag,
                  press: () {},
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Management",
                  style: GoogleFonts.robotoCondensed(
                    textStyle: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
            ),
            DrawerListTile(
              title: 'Products',
              icon: Icons.production_quantity_limits,
              press: () {},
            ),
            DrawerListTile(
              title: 'Orders',
              icon: Icons.list_alt,
              press: () {},
            ),
            DrawerListTile(
              title: 'WooCommerce',
              icon: Icons.inventory_2_outlined,
              press: () {},
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Others",
                  style: GoogleFonts.robotoCondensed(
                    textStyle: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
            ),
            DrawerListTile(
              title: 'Settings',
              icon: Icons.settings,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
