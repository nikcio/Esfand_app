import 'file:///Y:/GitRepo/esfand_app/lib/widgets/feedList/cardList.dart';
import 'package:esfandapp/widgets/classes/level.dart';
import 'package:esfandapp/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../globalValues.dart';
import '../widgets/navigation.dart';

Level _level = Level(title: "Novice", progress: 0.3);

List<Widget> newsNotFullscreen = [
Header(level: _level,),
  Expanded(child: CardList())
];

List<Widget> newsFullscreen = [
  Expanded(
    child: CardList(),
  )
];
