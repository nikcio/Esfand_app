import 'package:esfandapp/globalValues.dart';
import 'package:esfandapp/widgets/classes/post.dart';
import 'package:esfandapp/widgets/postCard.dart';
import 'package:esfandapp/widgets/postCardVideo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {

  List<Post> posts = [
    Post(author: "person", redditId: "23Hsa", date: "Today", over_18: false, title: "Title hhere", content: "", multi: false, links: [Link(type: "Video", url: "https://www.youtube.com/watch?v=QyFaR00tAvE")]),
    Post(author: "person", redditId: "23Hsa", date: "Today", over_18: false, title: "Title hhere", content: "", multi: false, links: [Link(type: "Image", url: "https://www.tutorialspoint.com/dart_programming/images/dart-programming-mini-logo.jpg")]),
    Post(author: "person", redditId: "23Hsa", date: "Today", over_18: false, title: "Title hhere", content: "", multi: false, links: [Link(type: "Image", url: "https://www.tutorialspoint.com/dart_programming/images/dart-programming-mini-logo.jpg")]),
    Post(author: "person", redditId: "23Hsa", date: "Today", over_18: false, title: "Title hhere", content: "", multi: false, links: [Link(type: "Image", url: "https://www.tutorialspoint.com/dart_programming/images/dart-programming-mini-logo.jpg")]),
    Post(author: "person", redditId: "23Hsa", date: "Today", over_18: false, title: "Title hhere", content: "", multi: false, links: [Link(type: "Image", url: "https://www.tutorialspoint.com/dart_programming/images/dart-programming-mini-logo.jpg")])
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          itemCount: posts.length,
          physics: isFullscreen ? NeverScrollableScrollPhysics() : null,
          itemBuilder: (BuildContext context, int index){
          return PostCardImage(post: posts[index],);
          }
      )
    );
  }
}