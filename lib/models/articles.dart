class Article{
  final String title;
  final String  description;
  final String urlToImage;
  final String url;

  Article({this.title, this.description, this.urlToImage, this.url});

  factory Article.fromJSON(Map<String, dynamic> json){
    return Article(
      title: json["title"],
      description: json["description"],
      url: json["url"],
      urlToImage: json["urlToImage"],
    );
  }
}