import 'package:equatable/equatable.dart';

class Article extends Equatable {
  String author;
  String title;
  String description;
  String url;
  String image;
  String publishedAt;
  String content;

  // create the constructor
  Article({
    //required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.image,
    required this.publishedAt,
    required this.content,
  });

  // create the function that will map the json into a list
  /*factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      //source: Source.fromJson(json['source']),
      author: json['author'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      urlToImage: json['urlToImage'] as String,
      publishedAt: json['publishedAt'] as String,
      content: json['content'] as String,
    );
  }*/

  @override
  // TODO: implement props
  List<Object?> get props => [
        author,
        title,
        description,
        image,
      ];
//Source source;
}
