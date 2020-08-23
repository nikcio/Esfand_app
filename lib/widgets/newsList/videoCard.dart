import 'package:esfandapp/globalValues.dart';
import 'package:esfandapp/widgets/classes/post.dart';
import 'package:esfandapp/widgets/classes/youtubeVideoData.dart';
import 'package:esfandapp/widgets/feedList/postCardVideo.dart';
import 'package:esfandapp/widgets/newsList/videoElement.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoCard extends StatelessWidget {
  final YoutubeVideoData video;
  final int index;
  VideoCard({this.video, this.index});

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
                    video.title,
                    style: TextStyle(
                      fontFamily: 'Roboto Condensed',
                      fontSize: 16,
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                ),
                alignment: Alignment.centerLeft,
              ),
              Content(
                video: video,
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
                    video.date.toString() + "",
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

class Content extends StatelessWidget {
  final YoutubeVideoData video;
  final int listIndex;

  Content({this.video, this.listIndex});

  @override
  Widget build(BuildContext context) {
    return VideoElement(
      id: video.id,
      listIndex: listIndex,
      last: true,
    );
  }
}
