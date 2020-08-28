//TODO make date DateTime
import 'package:html_unescape/html_unescape.dart';

class YoutubeVideoData {
  String url;
  String date;
  String title;
  List<String> thumbnails;

  YoutubeVideoData({this.title, this.date, this.url, this.thumbnails});

  factory YoutubeVideoData.fromJson(Map<String, dynamic> json) {
    return YoutubeVideoData(
      url: "https://www.youtube.com/watch?v=" + json["id"]["videoId"],
      date: json["snippet"]["publishedAt"],
      title: HtmlUnescape().convert(json["snippet"]["title"]),
      thumbnails: [
        json["snippet"]["thumbnails"]["default"]["url"],
        json["snippet"]["thumbnails"]["medium"]["url"],
        json["snippet"]["thumbnails"]["high"]["url"]
      ],
    );
  }
}
