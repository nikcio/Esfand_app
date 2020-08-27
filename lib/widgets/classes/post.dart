//TODO Refactor date to DateTime

class Post {
  String author;
  String redditId;
  String date;
  bool over_18;
  String title;
  String content;
  bool multi;
  List<Link> links;

  Post(
      {this.author,
      this.redditId,
      this.date,
      this.over_18,
      this.title,
      this.content,
      this.multi,
      this.links});

  factory Post.fromJson(Map<String, dynamic> json) {
    var _links = json['links'] as List;

    return Post(
      author: json['author'],
      redditId: json['reddit_id'],
      date: json['date'],
      over_18: json['over_18'],
      title: json['title'],
      content: json['content'],
      multi: json['multi'],
      links: _links.map((i) => Link.fromJson(i)).toList(),
    );
  }
}

class Link {
  String type;
  String url;

  Link({this.type, this.url});

  factory Link.fromJson(Map<String, dynamic> json) {
    return Link(
      type: json['type'],
      url: json['url'],
    );
  }
}
