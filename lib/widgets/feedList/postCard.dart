import 'package:esfandapp/widgets/classes/post.dart';
import 'package:esfandapp/widgets/functions/timeAgo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PostCard extends StatefulWidget {
  final Post post;
  PostCard({this.post});

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool failed(Post _post) {
    if (_post.links[0].type == "Video" &&
        !_post.links[0].url.contains('youtube')) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return failed(widget.post)
        ? SizedBox(
            height: 0,
          )
        : Container(
            child: Card(
              child: Container(
                child: Column(
                  children: [
                    Align(
                      child: Padding(
                        child: Text(
                          widget.post.title,
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
                      post: widget.post,
                    ),
                    Align(
                      child: Container(
                        child: Text(
                          timeAgo(widget.post.date),
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
          child: FadeInImage.assetNetwork(
              placeholder: 'assets/logo70x70.png', image: link.url));
    } else if (link.type == "Video") {
      if (link.url.contains('youtube')) {
        RegExp youtubeId = new RegExp(
            r"(?:https?:\/{2})?(?:w{3}\.)?youtu(?:be)?\.(?:com|be)(?:\/watch\?v=|\/)([^\s&]+)");

//        TODO: adaptive pictures -- Pictures = default, mqdefault, hqdefault

        return Stack(alignment: Alignment.center, children: [
          InkWell(
              onTap: () => _goToVideo(link.url),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    "https://i.ytimg.com/vi/" +
                        youtubeId.firstMatch(link.url).group(1) +
                        "/mqdefault.jpg",
                    fit: BoxFit.cover,
                  ))),
          Card(
            color: Color.fromRGBO(255, 0, 0, 1),
            child: Icon(
              Icons.play_arrow,
              size: 50,
            ),
          )
        ]);
      } else {
        return Text("Failed to load");
      }
    } else {
      return Text("Not found");
    }
  }
}

_goToVideo(String url) async {
  await launch(url);
}
