import 'package:esfandapp/globalValues.dart';
import 'package:esfandapp/widgets/classes/post.dart';
import 'package:esfandapp/widgets/postCardVideo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostCardImage extends StatelessWidget {
  final Post post;
  PostCardImage({this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Container(
          child: Column(
            children: [
              isFullscreen ? SizedBox(
                height: 0,
                width: 0,
              ) : Align(
                child: Padding(
                  child: Text(
                    isFullscreen.toString(),
                    style: TextStyle(
                      fontFamily: 'Roboto Condensed',
                      fontSize: 16,
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                ),
                alignment: Alignment.centerLeft,
              ),
              ContentList(post: post,),
              isFullscreen ? SizedBox(
                height: 0,
                width: 0,
              ) : Align(
                child: Padding(
                  child: Text(
                    '2 Hours ago',
                    style: TextStyle(
                      fontFamily: 'Roboto Condensed',
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                ),
                alignment: Alignment.centerLeft,
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width - 32,
          padding: EdgeInsets.symmetric(
            horizontal: 0,
            vertical: 10,
          ),
          alignment: Alignment.center,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
      ),
    );
  }
}

class ContentList extends StatelessWidget {
  final Post post;
  ContentList({this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: post.links
            .map((e) => Content(
                  link: e,
                ))
            .toList());
  }
}

class Content extends StatelessWidget {
  final Link link;
  Content({this.link});

  @override
  Widget build(BuildContext context) {
    if (link.type == "Image") {
      return Image(
        image: NetworkImage(link.url),
      );
    } else if (link.type == "Video") {
      return YoutubeVideo(url: link.url);
    } else{
      return Text("Not found");
    }
  }
}