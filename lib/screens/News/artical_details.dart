import 'package:can/screens/News/artical_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

class Article_details extends StatelessWidget {
  late final Article article;
  Article_details({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8cbed6),
        title: Text(
          //"Awakening 'dormant' cells to fight cancer",
          article.title,
          style: TextStyle(
            color: Color(0xff374c55),
          ),
        ),
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff97c6d8),
                      Color(0xff8cbed6),
                      Color(0xcc9bbfcf),
                      Color(0xcc8cbed6),
                    ],
                  ),
                  color: Colors.lightBlue[100],
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(article.image),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          color: Color(0xff374c55),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Text(
                          "Awakening 'dormant' cells to fight cancer",
                          //article.source.name,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        article.author,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        // "The advent of small-molecule targeted therapies, a decade ago, revolutionized the treatment of metastatic melanoma, provided that the tumors carry the mutations to respond to these treatments. However, despite a remarkable initial response that can be seen in a majority of patients, most of them will undergo relapse even after spectacular initial responses. These relapses are due to dormant persistent cells, unresponsive to treatment.",
                        article.content,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        article.publishedAt,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Linkify(
                        onOpen: (link) => print("Clicked ${article.url}!"),
                        text: "Article link:${article.url}",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
