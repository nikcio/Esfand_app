import 'package:esfandapp/widgets/classes/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:esfandapp/themes/darkColors.dart';

class UserCard extends StatelessWidget {
  final User user;
  final int index;
  UserCard({this.user, this.index});

  TextStyle _cardStyle(int _index) {
    return TextStyle(
      fontFamily: 'Roboto Condensed',
      fontSize: _index == 0 ? 17 : _index == 1 ? 16 : _index == 2 ? 15 : 14,
      fontWeight: _index == 0
          ? FontWeight.w800
          : _index == 1
              ? FontWeight.w700
              : _index == 2 ? FontWeight.w600 : FontWeight.w500,
      color: _index == 0 ? backgroundColor : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 5),
            width: index == 0
                ? MediaQuery.of(context).size.width - 10
                : index == 1
                    ? MediaQuery.of(context).size.width - 20
                    : index == 2
                        ? MediaQuery.of(context).size.width - 30
                        : MediaQuery.of(context).size.width - 50,
            height: 50,
            color: index == 0
                ? leaderboardGoldColor
                : index == 1
                ? leaderboardSilverColor
                : index == 2 ? leaderboardBronzeColor : cardColor,
            child: Center(
              child: ListTile(
                leading: Text(
                  user.username,
                  textAlign: TextAlign.left,
                  style: _cardStyle(index),
                ),
                trailing: Text("lvl. " + user.level.toString(),
                    textAlign: TextAlign.right, style: _cardStyle(index)),
              ),
            )));
  }
}
