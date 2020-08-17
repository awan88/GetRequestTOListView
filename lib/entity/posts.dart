
import 'package:flutter/material.dart';
import 'package:flutter_app2/entity/api.dart';
import 'package:flutter_app2/entity/postdetail.dart';
import 'package:flutter_app2/entity/posts_model.dart';

import 'datamusick.dart';
import 'http_service.dart';

class PostsPage extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Postsi"),
      ),
      body: FutureBuilder(
        future: httpService.getPosts(),
        builder: (BuildContext context, AsyncSnapshot<List<DataMusicks>> snapshot) {
          if (snapshot.hasData) {
            List<DataMusicks> posts = snapshot.data;
            return ListView(
              children: posts
                  .map(
                    (DataMusicks post) => ListTile(
                  title: Text(post.name),
                  subtitle: Text("${post.description}"),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PostDetail(
                        post: post,
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
    );
  }
}