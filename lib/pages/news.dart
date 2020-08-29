import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:esfandapp/widgets/classes/level.dart';
import 'package:esfandapp/widgets/classes/youtubeVideoData.dart';
import 'package:esfandapp/widgets/newsList/cardList.dart';
import 'package:esfandapp/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../globalValues.dart';

Level _level = Level(title: "Novice", progress: 0.3);

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  Future<List<YoutubeVideoData>> _futureVideos;

  @override
  void initState() {
    super.initState();
    _futureVideos = _fetchVideos();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(
          level: _level,
        ),
        FutureBuilder<List<YoutubeVideoData>>(
          future: _futureVideos,
          builder: (context, snapshot){
            if(snapshot.hasData){
              videos = snapshot.data;
              return Expanded(
                child: CardList(),
              );
            }else if(snapshot.hasError){
              return Text("${snapshot.error}");
            }else{
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
      ],
    );
  }
}

Future<List<YoutubeVideoData>> _fetchVideos() async {
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