import 'package:esfandapp/widgets/classes/level.dart';
import 'package:esfandapp/widgets/newsList/cardList.dart';
import 'package:esfandapp/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Level _level = Level(title: "Novice", progress: 0.3);

List<Widget> news = [
  Header(
    level: _level,
  ),
  Expanded(child: CardList())
];
