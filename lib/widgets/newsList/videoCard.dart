import 'package:esfandapp/widgets/classes/youtubeVideoData.dart';
import 'package:esfandapp/widgets/functions/timeAgo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoCard extends StatelessWidget {
  final YoutubeVideoData video;
  VideoCard({this.video});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _goToVideo(video),
      child: Container(
        child: Card(
          child: Container(
            child: Column(
              children: [
                Align(
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
                Stack(alignment: Alignment.center, children: [
                  Container(
                    child: Image.network(
                      video.thumbnails[1].url,
                      fit: BoxFit.cover,
                    ),
                    width: MediaQuery.of(context).size.width,
                  ),
                  Card(
                      color: Color.fromRGBO(255, 0, 0, 1),
                      child: Icon(Icons.play_arrow, size: 50)),
                ]),
                Align(
                  child: Container(
                    child: Text(
                      timeAgo(video.date),
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
      ),
    );
  }
}

_goToVideo(YoutubeVideoData video) async {
  await launch(video.url);
}
