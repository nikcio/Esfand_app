import 'package:esfandapp/globalValues.dart';
import 'package:esfandapp/widgets/feedList/postCard.dart';
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
            itemCount: posts.length,
            itemBuilder: (BuildContext context, int index) {
              return PostCard(
                post: posts[index],
                index: index,
              );
            }));
  }
}
