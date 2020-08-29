import 'package:esfandapp/widgets/classes/level.dart';
import 'package:esfandapp/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Level _level = Level(title: "Novice", progress: 0.3);

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(
          level: _level,
        ),
        Expanded(
          child: Center(
            child: Text("In development"),
          ),
        )
        //TODO finish profile
      ],
    );
  }
}
