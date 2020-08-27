import 'package:esfandapp/globalValues.dart';
import 'package:esfandapp/widgets/newsList/videoCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ScrollablePositionedList.builder(
            itemScrollController: listScrollController,
            itemCount: videos.length,
            itemBuilder: (BuildContext context, int index) {
              return VideoCard(
                video: videos[index],
                index: index,
              );
            }));
  }
}
