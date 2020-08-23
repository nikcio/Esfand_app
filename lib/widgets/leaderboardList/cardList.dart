import 'package:esfandapp/widgets/leaderboardList/userCard.dart';
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
          itemCount: leaderboardUsers.length,
          itemBuilder: (BuildContext context, int index) {
            return UserCard(
              user: leaderboardUsers[index],
              index: index,
            );
          }),
    );
  }
}
