import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'themes/darkTheme.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

GlobalKey<HomePageState> key = new GlobalKey();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app',

      themeMode: ThemeMode.dark,

      darkTheme: darkTheme,

      home: HomePage(
        key: key,
      ),
    );
  }
}
