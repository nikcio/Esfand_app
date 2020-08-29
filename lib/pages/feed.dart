import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:esfandapp/widgets/classes/level.dart';
import 'package:esfandapp/widgets/classes/post.dart';
import 'package:esfandapp/widgets/feedList/cardList.dart';
import 'package:esfandapp/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../globalValues.dart';

Level _level = Level(title: "Novice", progress: 0.3);

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  Future<List<Post>> _futurePosts;

  @override
  void initState() {
    super.initState();
    _futurePosts = _fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Header(
        level: _level,
      ),
      FutureBuilder<List<Post>>(
        future: _futurePosts,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            posts = snapshot.data;
            return Expanded(
              child: CardList(),
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          } else {
            return Center(
              child: Container(
                child: CircularProgressIndicator(),
                width: 100,
                height: 100,
              ),
            );
          }
        },
      ),
    ]);
  }
}

Future<List<Post>> _fetchPosts() async {
  final response = await http.get('http://nikcio.com/api/esfandapp/get-posts');

  if (response.statusCode == 200) {
    final _response = json.decode(utf8.decode(response.bodyBytes));
    var _results = _response['results'] as List;
    return _results.map((i) => Post.fromJson(i)).toList();
  } else {
    throw Exception('Failed to load resources');
  }
}
