//TODO make date DateTime
import 'package:html_unescape/html_unescape.dart';

class YoutubeVideoData {
  String url;
  String date;
  String title;
  List<Thumbnail> thumbnails;

  YoutubeVideoData({this.title, this.date, this.url, this.thumbnails});

  factory YoutubeVideoData.fromJson(Map<String, dynamic> json) {
    var _thumbs = json["thumbnails"] as List;
    return YoutubeVideoData(
      url: "https://www.youtube.com/watch?v=" + json["youtubeId"][0]["videoId"],
      date: json["snippet"][0]["publishedAt"],
      title: HtmlUnescape().convert(json["snippet"][0]["title"]),
      thumbnails: _thumbs.map((i) => Thumbnail.fromJson(i)).toList(),
    );
  }
}

class Thumbnail {
  String url;
  String size;

  Thumbnail({this.size, this.url});

  factory Thumbnail.fromJson(Map<String, dynamic> json) {
    return Thumbnail(
      url: json["url"],
      size: json["size"],
    );
  }
}
