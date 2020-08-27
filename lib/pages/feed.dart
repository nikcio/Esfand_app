import 'package:esfandapp/widgets/classes/level.dart';
import 'package:esfandapp/widgets/feedList/cardList.dart';
import 'package:esfandapp/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../globalValues.dart';

Level _level = Level(title: "Novice", progress: 0.3);

List<Widget> feed = [
  Header(
    level: _level,
  ),
  Expanded(child: CardList())
];
