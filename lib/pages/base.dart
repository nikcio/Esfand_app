import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:esfandapp/pages/leaderboard.dart';
import 'package:esfandapp/pages/notifications.dart';
import 'package:esfandapp/pages/profile.dart';
import 'package:esfandapp/globalValues.dart';
import 'package:esfandapp/widgets/navigation.dart';
import 'package:esfandapp/pages/feed.dart';
import 'package:esfandapp/pages/news.dart';

class BasePage extends StatefulWidget {
  BasePage({Key key}) : super(key: key);

  @override
  BasePageState createState() => BasePageState();
}

class BasePageState extends State<BasePage> {
  Widget getPage(int index) {
    List<Widget> pages = [
      News(),
      Feed(),
      Leaderboard(),
      NotificationTab(),
      Profile(),
    ];
    return pages[index];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: getPage(selectedIndex),
        bottomNavigationBar: BottomNav(),
      ),
    );
  }
}
