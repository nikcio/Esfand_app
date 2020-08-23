import 'package:esfandapp/widgets/classes/level.dart';
import 'package:esfandapp/widgets/feedList/cardList.dart';
import 'package:esfandapp/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Level _level = Level(title: "Novice", progress: 0.3);

List<Widget> feedNotFullscreen = [
  Header(level: _level,),
  Expanded(child: CardList())
];

List<Widget> feedFullscreen = [
  Expanded(
    child: CardList(),
  )
];
