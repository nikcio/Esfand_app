//TODO make date DateTime

class YoutubeVideoData{
  String id;
  String date;
  String title;

  YoutubeVideoData({this.title, this.date, this.id});

  factory YoutubeVideoData.fromJson(Map<String, dynamic> json){
    return YoutubeVideoData(
      id: json["id"]["videoId"],
      date: json["snippet"]["publishedAt"],
      title: json["snippet"]["title"],
    );
  }
}