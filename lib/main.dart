import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/base.dart';
import 'themes/darkTheme.dart';

void main() {
  runApp(MyApp());
}

GlobalKey<BasePageState> key = new GlobalKey();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app',
      themeMode: ThemeMode.dark,
      darkTheme: darkTheme,
      home: BasePage(
        key: key,
      ),
    );
  }
}
