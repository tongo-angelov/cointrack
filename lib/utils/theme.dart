import 'package:flutter/material.dart';

class AppTheme {
  static Color greenValueColor = Color.fromARGB(255, 37, 198, 128);
  static Color redValueColor = Color.fromARGB(255, 255, 105, 78);

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    backgroundColor: Color.fromRGBO(31, 35, 46, 1.0), // containers background
    bottomAppBarColor: Color.fromRGBO(33, 37, 46, 1.0), // bottomAppBar color
    cardColor: Color.fromRGBO(38, 44, 56, 1.0), // cards background color
    iconTheme:
        IconThemeData(color: Colors.blue), // bottomAppBar selected icon color
    primaryIconTheme: IconThemeData(
        color: Colors.white), // bottomAppBar nonselected icon color

    textTheme: TextTheme(
      headline4: TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
      headline5: TextStyle(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
      headline6: TextStyle(
          color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
      caption: TextStyle(
          color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w600),
      subtitle1: TextStyle(
          color: greenValueColor, fontSize: 12, fontWeight: FontWeight.w600),
      subtitle2: TextStyle(
          color: redValueColor, fontSize: 12, fontWeight: FontWeight.w600),
    ),

    accentColor: Colors.blueAccent[100],
    primaryColorLight: Colors.blueAccent[100],
    buttonColor: Colors.blueAccent[100],
    accentIconTheme: IconThemeData(color: Colors.blueAccent[100]),
    dividerColor: Color.fromRGBO(60, 60, 60, 1.0),
  );

  static ThemeData lightTheme = ThemeData.light().copyWith(
    backgroundColor: Colors.grey.shade200, // containers background
    bottomAppBarColor: Colors.grey.shade400, // bottomAppBar color
    cardColor: Colors.grey.shade300, // cards background color
    iconTheme:
        IconThemeData(color: Colors.blue), // bottomAppBar selected icon color
    primaryIconTheme: IconThemeData(
        color: Colors.black), // bottomAppBar nonselected icon color

    textTheme: TextTheme(
      headline4: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
      headline5: TextStyle(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
      headline6: TextStyle(
          color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
      caption: TextStyle(
          color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
      subtitle1: TextStyle(
          color: greenValueColor, fontSize: 12, fontWeight: FontWeight.w600),
      subtitle2: TextStyle(
          color: redValueColor, fontSize: 12, fontWeight: FontWeight.w600),
    ),

    accentColor: Colors.blueAccent[100],
    primaryColorLight: Colors.blueAccent[100],
    buttonColor: Colors.blueAccent[100],
    accentIconTheme: IconThemeData(color: Colors.blueAccent[100]),
    dividerColor: Color.fromRGBO(60, 60, 60, 1.0),
  );
}
