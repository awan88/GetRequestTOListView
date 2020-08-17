import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/entity/posts_model.dart';

import 'datamusick.dart';

class PostDetail extends StatelessWidget {
  final DataMusicks post;

  PostDetail({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(post.name),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ListTile(
                        title: Text("id"),
                        subtitle: Text(post.id.toString()),
                      ),
                      ListTile(
                        title: Text("name"),
                        subtitle: Text("${post.name}"),
                      ),
                      ListTile(
                        title: Text("description"),
                        subtitle: Text(post.description),
                      ),
                      ListTile(
                        title: Text("created_at"),
                        subtitle: Text("${post.created_at}"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}