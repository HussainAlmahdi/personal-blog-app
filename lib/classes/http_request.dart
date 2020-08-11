import '../models/post.dart';
import 'package:http/http.dart';
import 'dart:convert';

class HttpService {
  final String postsURL = "http://hussainalmahdi.com/getBlogs.php";

  Future<List<Post>> getPosts() async {
    Response res = await get(postsURL);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Post> posts = body
          .map(
            (dynamic item) => Post.fromJson(item),
          )
          .toList();

      return posts;
    } else {
      throw "Can't get posts.";
    }
  }
}