import 'package:esfandapp/widgets/classes/level.dart';
import 'package:esfandapp/widgets/feedList/cardList.dart';
import 'package:esfandapp/widgets/feedList/postCardVideo.dart';
import 'package:esfandapp/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../globalValues.dart';

Level _level = Level(title: "Novice", progress: 0.3);

List<Widget> feedNotFullscreen = [
  Header(
    level: _level,
  ),
  Expanded(child: CardList())
];

List<Widget> feedFullscreen = [
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
      child: YoutubeVideo(
        url: posts[fullscreenIndex].links[0].url,
        listIndex: -1,
        last: true,
      ),
    );
  }
}
