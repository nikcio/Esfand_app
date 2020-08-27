import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YoutubeVideo extends StatefulWidget {
  final String url;
  final bool last;
  final int listIndex;
  YoutubeVideo({this.url, this.last, this.listIndex, Key key})
      : super(key: key);

  @override
  YoutubeVideoState createState() => YoutubeVideoState();
}

class YoutubeVideoState extends State<YoutubeVideo> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
