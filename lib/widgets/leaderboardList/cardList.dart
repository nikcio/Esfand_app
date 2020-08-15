import 'package:esfandapp/widgets/classes/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'userCard.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  List<User> users = [
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
    User(username: "Person", level: 12),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            return UserCard(
              user: users[index],
              index: index,
            );
          }),
    );
  }
}
