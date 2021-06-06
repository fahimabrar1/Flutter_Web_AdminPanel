import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Mycolor.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          padding: EdgeInsets.all(5),
          color: MyColor.Indigo10,
          child: Row(
            children: [
              Expanded(
                  child: Container(
                margin: EdgeInsets.only(left: 15),
                child: Text("Dashboard",
                    style: GoogleFonts.robotoCondensed(
                      textStyle: TextStyle(
                          color: MyColor.BlackFont,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    )),
              )),
              Spacer(
                flex: 2,
              ),
              Expanded(child: SearchBar()),
              ProfilePanel()
            ],
          ),
        ))
      ],
    );
  }
}

class ProfilePanel extends StatelessWidget {
  const ProfilePanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
          color: MyColor.Indigo50,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          Icon(
            Icons.account_circle,
            color: MyColor.BlackFont,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Text("My Account",
                style: GoogleFonts.robotoCondensed(
                    textStyle: TextStyle(color: MyColor.BlackFont))),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_drop_down_sharp,
              color: MyColor.BlackFont,
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 1,
      style: GoogleFonts.robotoCondensed(
          textStyle: TextStyle(color: MyColor.BlackFont)),
      decoration: InputDecoration(
        hintText: "Search Here",
        fillColor: MyColor.Indigo50,
        filled: true,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        suffixIcon: Container(
          padding: EdgeInsets.all(2),
          margin: EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
            color: Colors.indigo[400],
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Icon(Icons.search, color: Colors.white),
        ),
      ),
    );
  }
}
