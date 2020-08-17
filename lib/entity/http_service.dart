
import 'dart:convert';

import 'package:flutter_app2/entity/posts_model.dart';
import 'package:http/http.dart';

import 'datamusick.dart';

class HttpService {
  //final String postsURL = "https://jsonplaceholder.typicode.com/posts";
  final String postsURL = "http://crocodic.net/asdpinfo/public/api/kapal";

  Future<List<DataMusicks>> getPosts() async {
    Response res = await get(postsURL);

    List<dynamic> body = jsonDecode(res.body);

    List<DataMusicks> posts = body.map((dynamic item) => DataMusicks.fromJson(item),)
        .toList();

    return posts;
  }

/*if (res.statusCode == 200) {

    } else {
      throw "Can't get posts.";
    }*//*

  }*/
}
