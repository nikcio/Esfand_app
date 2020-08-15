import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {

  final title;
  final time;

  NotificationCard({this.title, this.time});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.5),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 10,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: ListTile(
              title: Text(title),
              subtitle: Text(time),
            ),
          ),
        ),
      ),
    );
  }
}
