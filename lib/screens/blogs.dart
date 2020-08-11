import 'package:HussainAlmahdi/classes/http_request.dart';
import '../models/post.dart';
import '../widgets/drawer.dart';
import 'package:flutter/material.dart';
import '../screens/post_detail.dart';
class Blogs extends StatelessWidget {
  static const routeName = '/blogs';
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('My Blogs'),
      ),
      backgroundColor: Color(0xffdddede),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Blogs:',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: httpService.getPosts(),
              builder:
                  (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
                if (snapshot.hasData) {
                  List<Post> posts = snapshot.data;
                  return ListView(
                    children: posts
                        .map(
                          (Post post) => Card(
                            child: ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(post.imageUrl),
                                  radius: 29.0,
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    post.title,
                                    style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Posted in: ' + post.date.substring(0, 11),
                                  ),
                                ),
                                  onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => PostDetail(
                                    post: post,
                                  ),
                                ),
                              ),
                                ),
                          ),
                        )
                        .toList(),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
