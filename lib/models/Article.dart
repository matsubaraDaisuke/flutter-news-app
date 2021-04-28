class Article {
  String title;
  String description;
  String url;
  String urlToImage;
  String author;

  Article({
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.author,
  });

  Article.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    url = json['url'];

    if (json['author'] != null) {
      urlToImage = json['urlToImage'];
    } else {
      urlToImage = null;
    }

    if (json['author'] != null) {
      author = json['author'];
    } else {
      author = "";
    }
  }
}
