import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoElement extends StatefulWidget {
  final String id;
  final bool last;
  final int listIndex;
  VideoElement({this.id, this.last, this.listIndex, Key key}) : super(key: key);

  @override
  VideoElementState createState() => VideoElementState();
}

class VideoElementState extends State<VideoElement> {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
