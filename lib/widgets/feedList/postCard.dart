import 'package:esfandapp/globalValues.dart';
import 'package:esfandapp/widgets/classes/post.dart';
import 'package:esfandapp/widgets/feedList/postCardVideo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PostCard extends StatelessWidget {
  final Post post;
  final int index;
  PostCard({this.post, this.index});

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
                listIndex: index,
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
  final int listIndex;
  ContentList({this.post, this.listIndex});

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
                  listIndex: listIndex,
                ))
            .toList());
  }
}

class Content extends StatelessWidget {
  final Link link;
  final int index;
  final int length;
  final int listIndex;
  Content({this.link, this.index, this.length, this.listIndex});

  @override
  Widget build(BuildContext context) {
    if (link.type == "Image") {
      return Container(
        margin: index == length ? null : EdgeInsets.only(bottom: 20),
        child: FadeInImage.assetNetwork(placeholder: 'assets/logo70x70.png', image: link.url)
      );
    } else if (link.type == "Video") {
      if(YoutubePlayer.convertUrlToId(link.url) != null){
        return YoutubeVideo(
          url: link.url,
          last: index == length,
          listIndex: listIndex,
        );
      }else{
        return Text("Failed to load");
      }
    } else {
      return Text("Not found");
    }
  }
}
