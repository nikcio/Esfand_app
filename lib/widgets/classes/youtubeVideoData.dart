//TODO make date DateTime
import 'package:html_unescape/html_unescape.dart';

class YoutubeVideoData{
  String id;
  String date;
  String title;

  YoutubeVideoData({this.title, this.date, this.id});

  factory YoutubeVideoData.fromJson(Map<String, dynamic> json){
    return YoutubeVideoData(
      id: json["id"]["videoId"],
      date: json["snippet"]["publishedAt"],
      title: HtmlUnescape().convert(json["snippet"]["title"]),
    );
  }
}