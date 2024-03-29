import 'dart:convert';
//TODO switch to a url launcher instead of in app video player: https://pub.dev/packages/url_launcher
import 'package:esfandapp/widgets/classes/post.dart';
import 'package:esfandapp/widgets/classes/youtubeVideoData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:esfandapp/pages/leaderboard.dart';
import 'package:esfandapp/pages/notifications.dart';
import 'package:esfandapp/pages/profile.dart';
import 'package:esfandapp/globalValues.dart';
import 'package:esfandapp/widgets/navigation.dart';
import 'package:esfandapp/pages/feed.dart';
import 'package:esfandapp/pages/news.dart';
import 'package:http/http.dart' as http;

class BasePage extends StatefulWidget {
  BasePage({Key key}) : super(key: key);

  @override
  BasePageState createState() => BasePageState();
}

class BasePageState extends State<BasePage> {
  Future<List<Post>> futurePosts;
  Future<List<YoutubeVideoData>> futureVideos;

  @override
  void initState() {
    super.initState();
    futurePosts = fetchPosts();
    futureVideos = fetchVideos();
  }

  List<Widget> getPage(int index) {
    List<List<Widget>> pages = [
      news,
      feed,
      leaderboard,
      notificationTab,
      profile,
    ];
    return pages[index];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: FutureBuilder<List<Post>>(
      future: futurePosts,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          posts = snapshot.data;
          return FutureBuilder<List<YoutubeVideoData>>(
            future: futureVideos,
            builder: (context, snapshot) {
              videos = snapshot.data;
              if (snapshot.hasData) {
                return Scaffold(
                    body: Column(children: getPage(selectedIndex)),
                    bottomNavigationBar: BottomNav());
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return Center(
                  child: Container(
                child: CircularProgressIndicator(),
                width: 100,
                height: 100,
              ));
            },
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return Center(
            child: Container(
          child: CircularProgressIndicator(),
          width: 100,
          height: 100,
        ));
      },
    ));
  }
}

Future<List<Post>> fetchPosts() async {
  final response = await http.get('http://nikcio.com/api/esfandapp/get-posts');

  if (response.statusCode == 200) {
    final _response = json.decode(utf8.decode(response.bodyBytes));
    var _results = _response['results'] as List;
    return _results.map((i) => Post.fromJson(i)).toList();
  } else {
    throw Exception('Failed to load resources');
  }
}

Future<List<YoutubeVideoData>> fetchVideos() async {
  final response = await http.get(
      'https://nikcio.com/api/esfandapp/get-videos');

  if (response.statusCode == 200) {
    final _response = json.decode(utf8.decode(utf8.encode(response.body)));
    var _results = _response['results'] as List;
    return _results.map((i) => YoutubeVideoData.fromJson(i)).toList();
  } else {
    throw Exception('Failed to load resources');
  }
}
