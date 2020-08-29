import 'package:esfandapp/globalValues.dart';
import 'package:esfandapp/widgets/header.dart';
import 'package:esfandapp/widgets/notificationList/cardList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationTab extends StatefulWidget {
  @override
  _NotificationTabState createState() => _NotificationTabState();
}

class _NotificationTabState extends State<NotificationTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(
          level: level,
        ),
        Expanded(
          child: Center(child: Text("In development")),
        )
        //TODO get notification information
        //Expanded(child: CardList(),)
      ],
    );
  }
}
