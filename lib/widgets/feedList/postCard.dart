import 'package:esfandapp/globalValues.dart';
import 'package:esfandapp/widgets/classes/post.dart';
import 'file:///Y:/GitRepo/esfand_app/lib/widgets/feedList/postCardVideo.dart';
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
              isFullscreen
                  ? SizedBox(
                      height: 0,
                      width: 0,
                    )
                  : Align(
                      child: Padding(
                        child: Text(
                          post.title,
                          style: TextStyle(
                            fontFamily: 'Roboto Condensed',
                            fontSize: 16,
                          ),
                        ),
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
              ContentList(
                post: post,
              ),
              isFullscreen
                  ? SizedBox(
                      height: 0,
                      width: 0,
                    )
                  : Align(
                      child: Container(
                        child: Text(
                          post.date,
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
            .asMap()
            .entries
            .map((e) => Content(
                  link: e.value,
                  index: e.key,
                  length: post.links.length - 1,
                ))
            .toList());
  }
}

class Content extends StatelessWidget {
  final Link link;
  final int index;
  final int length;
  Content({this.link, this.index, this.length});

  @override
  Widget build(BuildContext context) {
    if (link.type == "Image") {
      return Container(
        margin: index == length ? null : EdgeInsets.only(bottom: 20),
        child: Image(
          image: NetworkImage(link.url),
        ),
      );
    } else if (link.type == "Video") {
      return YoutubeVideo(
        url: link.url,
        last: index == length,
      );
    } else {
      return Text("Not found");
    }
  }
}
