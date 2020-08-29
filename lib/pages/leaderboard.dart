import 'package:esfandapp/widgets/classes/level.dart';
import 'package:esfandapp/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:esfandapp/widgets/leaderboardList/cardList.dart';

Level _level = Level(title: "Novice", progress: 0.3);

class Leaderboard extends StatefulWidget {
  @override
  _LeaderboardState createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(
          level: _level,
        ),
        Expanded(
          child: Center(
            child: Text("Gathering information"),
          ),
        )
        //TODO finish leaderboard info
        //Expanded(child: CardList()),
      ],
    );
  }
}
