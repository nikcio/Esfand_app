import 'package:esfandapp/widgets/notificationList/notificationCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../globalValues.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (BuildContext context, int index) {
            return NotificationCard(
              title: notifications[index].title, time: notifications[index].time,
            );
          }),
    );
  }
}
