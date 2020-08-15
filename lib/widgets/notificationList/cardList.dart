import 'package:esfandapp/widgets/classes/notificationAlert.dart';
import 'package:esfandapp/widgets/classes/user.dart';
import 'package:esfandapp/widgets/notificationList/notificationCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  List<NotificationAlert> _notifications = [
    NotificationAlert(title: "Title here", time: "Today"),
    NotificationAlert(title: "Title here", time: "Today"),
    NotificationAlert(title: "Title here", time: "Today"),
    NotificationAlert(title: "Title here", time: "Today"),
    NotificationAlert(title: "Title here", time: "Today"),
    NotificationAlert(title: "Title here", time: "Today"),NotificationAlert(title: "Title here", time: "Today"),NotificationAlert(title: "Title here", time: "Today"),NotificationAlert(title: "Title here", time: "Today"),NotificationAlert(title: "Title here", time: "Today"),NotificationAlert(title: "Title here", time: "Today"),NotificationAlert(title: "Title here", time: "Today"),NotificationAlert(title: "Title here", time: "Today"),NotificationAlert(title: "Title here", time: "Today"),NotificationAlert(title: "Title here", time: "Today"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          itemCount: _notifications.length,
          itemBuilder: (BuildContext context, int index) {
            return NotificationCard(
              title: _notifications[index].title, time: _notifications[index].time,
            );
          }),
    );
  }
}
