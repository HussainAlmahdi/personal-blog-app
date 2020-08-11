import 'package:flutter/foundation.dart';


class Post {
  final String imageUrl;
  final String date;
  final String title;
  final String body;

  Post({
    @required this.imageUrl,
    @required this.date,
    @required this.title,
    @required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      title: json['title'] as String,
      imageUrl: json['image'] as String,
      date: json['post_date'] as String,
      body: json['content'] as String,
    );
  }
}