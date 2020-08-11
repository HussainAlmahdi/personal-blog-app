import '../models/post.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart';
class PostDetail extends StatelessWidget {
  final Post post;

String _parseHtmlString(String htmlString) {

var document = parse(htmlString);

String parsedString = parse(document.body.text).documentElement.text;

return parsedString;
}



  PostDetail({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(post.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  post.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(
                    post.date,
                    style: TextStyle(fontSize:15),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child:Text(_parseHtmlString(post.body),style: TextStyle(fontSize: 20),)
                ),
              )
            ],
          ),
        ));
  }
}
