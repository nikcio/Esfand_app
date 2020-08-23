import 'package:esfandapp/widgets/classes/level.dart';
import 'package:esfandapp/widgets/newsList/cardList.dart';
import 'package:esfandapp/widgets/newsList/videoElement.dart';
import 'package:esfandapp/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../globalValues.dart';

Level _level = Level(title: "Novice", progress: 0.3);

List<Widget> newsNotFullscreen = [
  Header(
    level: _level,
  ),
  Expanded(child: CardList())
];

List<Widget> newsFullscreen = [
  YTVideo(),
];

class YTVideo extends StatefulWidget {
  @override
  _YTVideoState createState() => _YTVideoState();
}

class _YTVideoState extends State<YTVideo> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: VideoElement(
        id: posts[fullscreenIndex].links[0].url,
        listIndex: -1,
        last: true,
      ),
    );
  }
}
