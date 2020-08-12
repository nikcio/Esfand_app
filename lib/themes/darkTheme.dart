import 'darkColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blueGrey,
    canvasColor: backgroundColor,

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(
        color: navItemSelected,
        size: 28,
      ),

      unselectedIconTheme: IconThemeData(
        color: navItemUnselected,
        size: 28,
      ),

      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),

    cardColor: cardColor
);
