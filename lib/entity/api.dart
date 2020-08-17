/*


import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'datamusick.dart';

class API {
  Future<List<DataMusicks>> getPosts() async
  {
    String apiUrl = "https://madko.id/serv/v1/index.php/api/TrackMusic/getEvents";
    var apiResult = await http.post(apiUrl);
    //var jsonObject = json.decode(apiResult.body);
    List<dynamic> body = jsonDecode(apiResult.body);

    List<DataMusicks> posts = body.map((dynamic item) => DataMusicks.fromJson(item),).toList();

    return posts;
    //return API.connectToAPi(jsonObject);
  }
}

*/
