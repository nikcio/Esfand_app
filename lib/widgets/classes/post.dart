

class Post{

  String author;
  String redditId;
  String date;
  bool over_18;
  String title;
  String content;
  bool multi;
  List<Link> links;

  Post({
    this.author,
    this.redditId,
    this.date,
    this.over_18,
    this.title,
    this.content,
    this.multi,
    this.links
  });

}

class Link{

  String type;
  String url;

  Link({this.type, this.url});
}